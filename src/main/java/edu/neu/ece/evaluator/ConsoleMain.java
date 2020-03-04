package edu.neu.ece.evaluator;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;

import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.DefaultParser;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;
import org.apache.log4j.PropertyConfigurator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import edu.neu.ece.filter.SPARQLFilenameFilter;

/**
 * Main class, entry to the program.
 * 
 * @author Yanji Chen
 * @version 1.0
 * @since 2019-10-02
 */
public class ConsoleMain {
	/**
	 * Logger class, used for generating log file and debugging info on console.
	 */
	private final Logger logger = LoggerFactory.getLogger(getClass().getName());

	/**
	 * Relative path to configuration directory.
	 */
	private static final String CONFIG_PATH = "conf" + File.separator;

	/**
	 * Help option name on console.
	 */
	private static final String HELP_OPTION_NAME = "h";

	/**
	 * Query transform option name on console.
	 */
	private static final String TRANSFORM_OPTION_NAME = "t";

	/**
	 * Input instance data (ABox) URI option name on console.
	 */
	private static final String DATASET_URI = "datasetURI";

	/**
	 * The number of device descriptions option name on console.
	 */
	private static final String DEV_NUMBER = "devNumber";

	/**
	 * The most complete ontology directory option name on console.
	 */
	private static final String COMPLETE_ONTOLOGY_DIRECTORY = "completeOntologyDirectory";

	/**
	 * Test ontology directory option name on console.
	 */
	private static final String TEST_ONTOLOGY_DIRECTORY = "testOntologyDirectory";

	// Static block
	static {
		PropertyConfigurator.configure(CONFIG_PATH + "log4j.properties");
	}

	/**
	 * Main function, entrance to the program.
	 * 
	 * @param args
	 *            Arguments from console.
	 * @throws URISyntaxException
	 *             If ontology IRI creation failed.
	 */
	public static void main(String[] args) throws Exception {
		new ConsoleMain().parseCommandLine(args);
	}

	/**
	 * Parse arguments from console.
	 * 
	 * @param args
	 *            Arguments from console.
	 * @throws Exception
	 */
	public void parseCommandLine(String[] args) throws Exception {
		CommandLine line = null;
		Options options = createOptions();

		try {
			line = new DefaultParser().parse(options, args);
		} catch (ParseException exp) {
			logger.error("Parsing failed. Reason:" + exp.getMessage());
			printHelpMenu(options);
			System.exit(1);
		}

		if (line.hasOption(HELP_OPTION_NAME)) {
			printHelpMenu(options);
			System.exit(1);
		}

		File sparqlQueryDirectory = new File("SPARQLqueries");
		if (!sparqlQueryDirectory.isDirectory()) 
			sparqlQueryDirectory.mkdirs();
			

		File xqueryQueryDirectory = new File("XQueryqueries");
		if (!xqueryQueryDirectory.isDirectory()) 
			xqueryQueryDirectory.mkdirs();
		
		if (line.hasOption(TRANSFORM_OPTION_NAME)) {
			convert(sparqlQueryDirectory, xqueryQueryDirectory);
			System.exit(1);
		}

		File instanceFile = new File(new URI(line.getOptionValue(DATASET_URI)));
		if (!instanceFile.isFile()) {
			logger.error("{} is not a file!", instanceFile.toURI());
			throw new Exception();
		}

		int devNumber = Integer.parseInt(line.getOptionValue(DEV_NUMBER));
		if (devNumber < 0) {
			logger.error("Device number must be a positive number.");
			throw new Exception();
		}

		File completeOntologyDirectory;
		if (line.hasOption(COMPLETE_ONTOLOGY_DIRECTORY)) {
			completeOntologyDirectory = new File(line.getOptionValue(COMPLETE_ONTOLOGY_DIRECTORY));
			if (!completeOntologyDirectory.isDirectory()) {
				logger.error("{} is not a directory!", completeOntologyDirectory.toURI());
				throw new Exception();
			}
		} else
			completeOntologyDirectory = new File(
					"ontologies" + File.separator + "SDROntology" + File.separator + "BenchmarkOntology");

		File testOntologyDirectory;
		if (line.hasOption(TEST_ONTOLOGY_DIRECTORY)) {
			testOntologyDirectory = new File(line.getOptionValue(TEST_ONTOLOGY_DIRECTORY));
			if (!testOntologyDirectory.isDirectory()) {
				logger.error("{} is not a directory!", testOntologyDirectory.toURI());
				throw new Exception();
			}
		} else
			testOntologyDirectory = new File(
					"ontologies" + File.separator + "SDROntology" + File.separator + "TestOntology");

		Evaluator evaluator = new Evaluator(instanceFile, devNumber, completeOntologyDirectory, testOntologyDirectory,
				sparqlQueryDirectory, xqueryQueryDirectory);
		evaluator.executeEngines();
	}

	/**
	 * Create Option objects from option names.
	 * 
	 * @return Option objects.
	 */
	private Options createOptions() {
		Options options = new Options();
		Option opt = Option.builder(DATASET_URI).argName("URI").hasArg().desc("URI that relates to the instance data")
				.build();
		opt.setRequired(true);
		options.addOption(opt);

		opt = Option.builder(DEV_NUMBER).argName("NUMBER").hasArg().desc("The number of device descriptions.").build();
		opt.setRequired(true);
		options.addOption(opt);

		options.addOption(Option.builder(HELP_OPTION_NAME).desc("Views this help text").build());
		options.addOption(Option.builder(TRANSFORM_OPTION_NAME).desc("Perform query transformation").build());
		options.addOption(Option.builder(COMPLETE_ONTOLOGY_DIRECTORY).argName("PATH").hasArg().desc(
				"Directory of the most complete ontology (TBox);./ontoloiges/SDROntology/BenchmarkOntology/ by default.")
				.build());
		options.addOption(Option.builder(TEST_ONTOLOGY_DIRECTORY).argName("PATH").hasArg()
				.desc("Parent directory of test ontologies (TBox);./ontoloiges/SDROntology/TestOntology/ by default.")
				.build());
		return options;
	}

	/**
	 * Print help menu, in the case when invalid input occurs.
	 * 
	 * @param options
	 *            Option objects.
	 */
	private void printHelpMenu(Options options) {
		HelpFormatter helpFormatter = new HelpFormatter();
		helpFormatter.printHelp("java -jar evaluator-1.0-SNAPSHOT.jar", options);
	}

	/**
	 * Covert SPARQL queries to XQuery queries by invoking external xql2xquery
	 * component.
	 * 
	 * @param sparqlQueryDirectory
	 *            SPARQL query directory.
	 * @param xqueryQueryDirectory
	 *            XQuery query directory.
	 * @throws IOException
	 *             If there I/O exception exists.
	 */
	private void convert(File sparqlQueryDirectory, File xqueryQueryDirectory) throws IOException {
		if (sparqlQueryDirectory == null || xqueryQueryDirectory == null)
			return;
		FilenameFilter sparqlFileFilter = new SPARQLFilenameFilter();
		File[] files = sparqlQueryDirectory.listFiles(sparqlFileFilter);
		Arrays.sort(files, new FileComparator());
		String xqueryFileNameWithoutExtension, command;
		for (File file : files) {
			xqueryFileNameWithoutExtension = file.getName().substring(0, file.getName().lastIndexOf('.'));
			command = "./xql2xquery.exe --xqversion 1.1 --output_mode standard --type sparql --file " + file.getPath()
					+ " --output_path " + xqueryQueryDirectory.getPath() + File.separator
					+ xqueryFileNameWithoutExtension + ".xq"
					+ " --collection ObjectDescription --format rdf --storage filesystem --output_format sparql-xml --reference_type about";
			// logger.info(command);
			Runtime.getRuntime().exec(command);
		}
		logger.info("SPARQL query to XQuery query conversion is done!");
	}

}
