package edu.neu.ece.evaluator;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.commons.io.FileUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import com.vistology.dev2waldo.devisor.client.DeVISorClient;

import edu.neu.ece.filter.SPARQLFilenameFilter;
import edu.neu.ece.filter.XQueryFilenameFilter;

/**
 * This class defines functions for the metrics-based evaluation.
 * 
 * @author Yanji Chen
 * @version 1.0
 * @since 2019-10-02
 */
public class Evaluator {
	/**
	 * Logger class, used for generating log file and debugging info on console.
	 */
	private Logger logger = LoggerFactory.getLogger(getClass().getName());

	/**
	 * DeVISor client.
	 */
	private DeVISorClient dClient = null;

	/**
	 * BaseX client.
	 */
	private BaseXClient bClient = null;

	/**
	 * Metric object.
	 */
	private Metric metric;

	/**
	 * The number of devices and queries.
	 */
	private int devNumber, queryNumber;

	/**
	 * Device description instance data file.
	 */
	private File instanceFile;

	/**
	 * Directory of the most complete ontology.
	 */
	private File completeOntologyDirectory;

	/**
	 * Directory of test ontologies.
	 */
	private File testOntologyDirectory;

	/**
	 * Directory of SPARQL queries.
	 */
	private File sparqlQueryDirectory;

	/**
	 * Directory of XQuery queries.
	 */
	private File xqueryQueryDirectory;

	/**
	 * Ground truth of each query.
	 */
	private Map<Integer, ArrayList<String>> groundTruth = null;

	/**
	 * High level representation of a SpreadsheetML workbook.
	 */
	private XSSFWorkbook workBook;

	/**
	 * High level representation of the the possible formatting information for the
	 * contents of the cells on a sheet in a SpreadsheetML document.
	 */
	private XSSFCellStyle style;

	/**
	 * Represents a font used in a workbook.
	 */
	private XSSFFont font;

	/**
	 * An array of high level representation of a Excel worksheet.
	 */
	private Sheet[] sheets;

	/**
	 * Data format declaration in the worksheet.
	 */
	// Set data format for each column
	// A1 B1 C1 D1 E1 F1 G1 H1 I1 J1 K1
	private String[][] dataFormat = { { "0", "0", "0", "0", "0", "0", "0.00%", "0.00%", "0.00%", "0", "0" }, // EvaluationResultSetI
			{ "0" } }; // EvaluationResultSetII

	/**
	 * Constructor
	 * 
	 * @param instanceFile
	 *            Device description instance data file.
	 * @param devNumber
	 *            The number of devices.
	 * @param completeOntologyDirectory
	 *            Directory of the most complete ontology.
	 * @param testOntologyDirectory
	 *            Directory of test ontologies.
	 * @param sparqlQueryDirectory
	 *            Directory of SPARQL queries.
	 * @param xqueryQueryDirectory
	 *            Directory of XQuery queries.
	 * @throws Exception
	 *             If there are some exceptions while moving the most complete
	 *             ontologies in the specified directory to the target directory.
	 */
	public Evaluator(File instanceFile, int devNumber, File completeOntologyDirectory, File testOntologyDirectory,
			File sparqlQueryDirectory, File xqueryQueryDirectory) throws Exception {
		this.instanceFile = instanceFile;
		this.devNumber = devNumber;
		this.completeOntologyDirectory = completeOntologyDirectory;
		this.testOntologyDirectory = testOntologyDirectory;
		this.sparqlQueryDirectory = sparqlQueryDirectory;
		this.xqueryQueryDirectory = xqueryQueryDirectory;
	}

	/**
	 * Execute evaluation process.
	 * 
	 * @throws Exception
	 *             If there are some exceptions during the process.
	 */
	public void executeEngines() throws Exception {
		groundTruth = generateGroundTruth();
		collectOWLBasedMetrics();
		collectXMLBasedMetrics();
	}

	/**
	 * Collect metrics in the OWL-based approach.
	 * 
	 * @throws Exception
	 *             If there are some excepts during the metric collection process.
	 */
	private void collectOWLBasedMetrics() throws Exception {
		File[] ontologyfiles = testOntologyDirectory.listFiles();
		Arrays.sort(ontologyfiles, new DirectoryComparator());

		for (File testFile : ontologyfiles) {
			if (!testFile.isDirectory())
				continue;
			loadBackgroundKnowledge(testFile);
			dClient.initialize();
			initializeSheet();
			metric = new Metric(devNumber);

			long timeStart = System.currentTimeMillis();
			registerDeviceDescriptioninOWLSide();
			metric.registrationTime = System.currentTimeMillis() - timeStart;

			FilenameFilter sparqlFileFilter = new SPARQLFilenameFilter();
			File[] files = sparqlQueryDirectory.listFiles(sparqlFileFilter);
			Arrays.sort(files, new FileComparator());

			ArrayList<String> sparqlQueryResults;
			int queryID;
			int rowNum = 1;

			for (File file : files) {
				queryID = Integer.parseInt(file.getName().substring(5, file.getName().lastIndexOf('.')));
				if (groundTruth.get(queryID).size() != 0) {
					metric.reset();
					metric.queryID = queryID;
					metric.queryEncodingSize = file.length();

					timeStart = System.currentTimeMillis();
					sparqlQueryResults = processASPARQLQuery(file);
					metric.queryTime = System.currentTimeMillis() - timeStart;

					evaluatePrecisionRecall(queryID, sparqlQueryResults);
					generateOneRow(0, rowNum++);
				}
			}

			generateOneRow(1, 1);
			final String OUTPUT_FILE = "evaluationresults" + File.separator + "EvaluationResults_" + testFile.getName()
					+ "_" + devNumber + "Devices_" + queryNumber + "Queries.xlsx";
			File outputFile = new File(OUTPUT_FILE);
			if (outputFile.exists())
				outputFile.delete();
			FileOutputStream fos = new FileOutputStream(OUTPUT_FILE);
			workBook.write(fos);
			workBook.close();
			logger.info("Done. See results in {}.", OUTPUT_FILE);
		}
	}

	/**
	 * Collect metrics in the XML-based approach.
	 * 
	 * @throws IOException
	 *             If I/O exceptions occurred.
	 * @throws ParserConfigurationException
	 *             If exceptions while parsing XML queries occurred.
	 * @throws SAXException
	 *             If exceptions while parsing XML queries occurred.
	 */
	private void collectXMLBasedMetrics() throws IOException, ParserConfigurationException, SAXException {
		try {
			bClient = new BaseXClient("localhost", 1984, "admin", "admin");
			bClient.execute("create db database");
		} catch (IOException e) {
			e.printStackTrace();
		}
		initializeSheet();
		metric = new Metric(devNumber);
		long timeStart = System.currentTimeMillis();
		registerDeviceDescriptioninXMLSide();
		metric.registrationTime = System.currentTimeMillis() - timeStart;

		FilenameFilter xqueryFileFilter = new XQueryFilenameFilter();
		File[] files = xqueryQueryDirectory.listFiles(xqueryFileFilter);
		Arrays.sort(files, new FileComparator());

		ArrayList<String> xqueryQueryResults;
		int queryID;
		int rowNum = 1;

		for (File file : files) {
			queryID = Integer.parseInt(file.getName().substring(5, file.getName().lastIndexOf('.')));
			if (groundTruth.get(queryID).size() != 0) {
				metric.reset();
				metric.queryID = queryID;
				metric.queryEncodingSize = file.length();

				timeStart = System.currentTimeMillis();
				xqueryQueryResults = processAXQueryQuery(file);
				metric.queryTime = System.currentTimeMillis() - timeStart;

				evaluatePrecisionRecall(queryID, xqueryQueryResults);
				generateOneRow(0, rowNum++);
			}
		}

		generateOneRow(1, 1);
		final String OUTPUT_FILE = "evaluationresults" + File.separator + "EvaluationResults_XMLbased_" + devNumber
				+ "Devices_" + queryNumber + "Queries.xlsx";
		File outputFile = new File(OUTPUT_FILE);
		if (outputFile.exists())
			outputFile.delete();
		FileOutputStream fos = new FileOutputStream(OUTPUT_FILE);
		workBook.write(fos);
		workBook.close();
		logger.info("Done. See results in {}.", OUTPUT_FILE);
		bClient.execute("delete " + instanceFile.getPath());
		bClient.execute("drop db database");
		bClient.close();
	}

	/**
	 * Initialize the spreadsheet.
	 */
	private void initializeSheet() {
		workBook = new XSSFWorkbook();
		style = workBook.createCellStyle();
		font = workBook.createFont();
		sheets = new Sheet[] { workBook.createSheet("EvaluationResultSetI"),
				workBook.createSheet("EvaluationResultSetII") };

		// Set style the first row
		style.setAlignment(HorizontalAlignment.CENTER);
		style.setVerticalAlignment(VerticalAlignment.CENTER);

		// Set font for the first row
		font.setBold(true);
		font.setFontName("Arial");
		font.setFontHeightInPoints((short) 14);

		style.setFont(font);
		style.setWrapText(true);
		// style.setDataFormat(dataFormat.getFormat("0"));
		// Set columns size of each sheet
		// A1 B1 C1 D1 E1 F1 G1 H1 I1 J1 K1
		int[][] sizes = {
				{ 14 * 256, 20 * 256, 31 * 256, 26 * 256, 26 * 256, 27 * 256, 14 * 256, 14 * 256, 16 * 256, 20 * 256,
						26 * 256 }, // EvaluationResultSetI
				{ 26 * 256 } }; // EvaluationResultSetII

		ArrayList<String[]> inputContent = new ArrayList<String[]>();

		inputContent.add(new String[] { "Query ID", "Total Number \nof Devices", "Number of \nNon-Matching Devices",
				"Number of \nMatching Devices", "Number of Results \nRetrieved", "Number of Relevant \nRetrieved",
				"Precision", "Recall", "F-Measure", "Query Time(ms)", "Encoding Size(bytes)" });

		inputContent.add(new String[] { "Registration Time(ms)" });

		for (int i = 0; i < sheets.length; i++) {
			Row row = sheets[i].createRow(0);
			row.setHeight((short) 700);
			String[] inputString = inputContent.get(i);
			for (int j = 0; j < inputString.length; j++) {
				sheets[i].setColumnWidth(j, sizes[i][j]);
				Cell cell = row.createCell(j);
				// sheets[i].autoSizeColumn(j);
				cell.setCellStyle(style);
				cell.setCellValue(inputString[j]);
			}
		}
	}

	/**
	 * Generate one row in the specified row number and sheet number.
	 * 
	 * @param sheetNum
	 *            Sheet number.
	 * @param rowNumber
	 *            Row number.
	 */
	private void generateOneRow(int sheetNum, int rowNumber) {
		// Set content for current row
		Object[] inputString = (sheetNum == 0)
				? new Object[] { metric.queryID, metric.totalNumberOfDevices, metric.numberOfNonMatchingDevice,
						metric.numberOfMatchingDevice, metric.numberOfResultsRetrieved,
						metric.numberOfRelevantRetrieved, metric.precision, metric.recall, metric.f_measure,
						metric.queryTime, metric.queryEncodingSize }
				: new Object[] { metric.registrationTime };

		Row row;
		row = sheets[sheetNum].createRow(rowNumber);
		XSSFCellStyle style;
		XSSFFont font;
		for (int j = 0; j < inputString.length; j++) {
			Cell cell = row.createCell(j);
			// sheets[i].autoSizeColumn(j, true);
			cell.setCellValue(castDataFormat(inputString[j]));

			style = workBook.createCellStyle();
			font = workBook.createFont();

			// Set style for current cell
			style.setAlignment(HorizontalAlignment.CENTER);
			style.setVerticalAlignment(VerticalAlignment.CENTER);

			// Set font for current cell
			font.setFontHeightInPoints((short) 10);
			style.setFont(font);
			style.setWrapText(true);
			style.setDataFormat(workBook.createDataFormat().getFormat(dataFormat[sheetNum][j]));
			cell.setCellStyle(style);
		}

	}

	/**
	 * Cast data format.
	 * 
	 * @param obj
	 *            Specified data format.
	 * @return Target data format.
	 */
	private double castDataFormat(Object obj) {
		if (obj instanceof Double)
			return ((Double) obj).doubleValue();
		else if (obj instanceof Integer)
			return ((Integer) obj).intValue();
		else if (obj instanceof Long)
			return ((Long) obj).longValue();
		return 0;
	}

	/**
	 * Generate ground truth of each query.
	 * 
	 * @return Ground truth of each query.
	 * @throws Exception
	 *             If there are some exceptions during the process.
	 */
	private Map<Integer, ArrayList<String>> generateGroundTruth() throws Exception {
		loadBackgroundKnowledge(completeOntologyDirectory);
		dClient = new DeVISorClient();
		dClient.initialize();
		Map<Integer, ArrayList<String>> gt = new HashMap<>();
		File groundTruthFile = new File("evaluationresults" + File.separator + "QueryGroundTruth.txt");

		StringBuffer groundTruth = new StringBuffer();
		registerDeviceDescriptioninOWLSide();

		FilenameFilter sparqlFileFilter = new SPARQLFilenameFilter();
		File[] files = sparqlQueryDirectory.listFiles(sparqlFileFilter);
		Arrays.sort(files, new FileComparator());
		queryNumber = files.length;
		ArrayList<String> sparqlQueryResults;
		int queryID;
		for (File file : files) {
			sparqlQueryResults = processASPARQLQuery(file);
			queryID = Integer.parseInt(file.getName().substring(5, file.getName().lastIndexOf('.')));
			gt.put(queryID, sparqlQueryResults);
			groundTruth.append("Ground truth of query" + queryID + ":\n");
			for (String s : sparqlQueryResults)
				groundTruth.append(s + "\n");
			groundTruth.append("\n\n");
		}
		FileUtils.writeStringToFile(groundTruthFile, groundTruth.toString(), StandardCharsets.UTF_8, false);
		logger.info("The ground truth of queries are in {}!", groundTruthFile.getCanonicalPath());
		return gt;
	}

	/**
	 * Move the most complete ontology to the target directory.
	 * 
	 * @param src
	 *            The most complete ontology.
	 * @throws Exception
	 *             If there are some exceptions during the process.
	 */
	private void loadBackgroundKnowledge(File src) throws Exception {
		if (src == null || !src.isDirectory()) {
			logger.error("{} is not a directory!", src.toURI());
			throw new Exception();
		}
		File des = new File("devisor" + File.separator + "onts");
		if (des == null || !des.isDirectory()) {
			logger.error("{} is not a directory!", des.toURI());
			throw new Exception();
		}
		if (des.list().length > 0)
			FileUtils.cleanDirectory(des);
		FileUtils.copyDirectory(src, des, false);
	}

	/**
	 * Register device descriptions to the OWL matcher (DeVISor).
	 * 
	 * @throws Exception
	 *             If there are some exceptions during the process.
	 */
	private void registerDeviceDescriptioninOWLSide() throws Exception {
		String updateScript = "LOAD <" + instanceFile.toURI().toString() + ">";
		logger.info("Generate SPARQL Update script: {}", updateScript);

		dClient.runSparqlUpdateFromString(updateScript);
		logger.info("{} has successfully been loaded into DeVISor repository!", instanceFile.getPath());
	}

	/**
	 * Register device descriptions to the XML matcher (BaseX).
	 * 
	 * @throws IOException
	 *             If there are I/O exceptions during the process.
	 */
	private void registerDeviceDescriptioninXMLSide() throws IOException {
		InputStream is = new FileInputStream(instanceFile.getCanonicalPath());
		// add document
		bClient.add(instanceFile.getPath(), is);
		is.close();
		logger.info("{} has successfully been loaded into BaseX repository!", instanceFile.getPath());
	}

	/**
	 * Process a SPARQL query.
	 * 
	 * @param file
	 *            A SPARQL query.
	 * @return Matching results of the query.
	 * @throws Exception
	 *             If there are some exceptions during the process.
	 */
	public ArrayList<String> processASPARQLQuery(File file) throws Exception {
		ArrayList<String> queryResult = new ArrayList<String>();
		logger.info("Running the SPARQL query stored in the following file:\n{}", file.getPath());
		queryResult = processSPARQLQueryResults(dClient.runSparqlQueryFromFile(file.getPath()));
		return queryResult;
	}

	/**
	 * Retrieve matching devices from query results.
	 * 
	 * @param resultJson
	 *            SPARQL query results in Json.
	 * @return Matching devices retrieved from the results.
	 */
	private ArrayList<String> processSPARQLQueryResults(String resultJson) {
		ArrayList<String> queryResult = new ArrayList<String>();
		// System.out.println(resultJson);
		SparqlQueryResult jsonResult = SparqlQueryResultParser.parse(resultJson);
		StringBuffer result = new StringBuffer();
		for (Map<String, String> binding : jsonResult.getAllBindings())
			for (String var : binding.keySet()) {
				result.append("\t" + binding.get(var) + "\n");
				queryResult.add(binding.get(var));
			}
		if (result.length() > 0)
			result.deleteCharAt(result.length() - 1);
		logger.trace("SPARQL query results are shown as follows:\n" + result.toString());
		return queryResult;
	}

	/**
	 * Process a XQuery query.
	 * 
	 * @param file
	 *            A XQuery query.
	 * @return Matching results of the query.
	 * @throws IOException
	 *             If I/O exceptions occur.
	 * @throws ParserConfigurationException
	 *             If exceptions occur while processing XML query results.
	 * @throws SAXException
	 *             If exceptions occur while processing XML query results.
	 */
	public ArrayList<String> processAXQueryQuery(File file)
			throws IOException, ParserConfigurationException, SAXException {
		ArrayList<String> queryResult = new ArrayList<String>();
		String path = file.getAbsolutePath();
		metric.queryEncodingSize = file.length();
		logger.info("Running the XQUery query stored in the following file:\n{}", file.getPath());
		queryResult = returnXQueryResult(bClient.execute("run " + path));
		return queryResult;
	}

	/**
	 * Retrieve matching devices from query results.
	 * 
	 * @param resultXML
	 *            XQuery query results in XML.
	 * @return Matching results retrieved from the query results.
	 * @throws ParserConfigurationException
	 *             If exceptions occur while processing XML query results.
	 * @throws SAXException
	 *             If exceptions occur while processing XML query results.
	 * @throws IOException
	 *             If I/O exceptions occur.
	 */
	private ArrayList<String> returnXQueryResult(String resultXML)
			throws ParserConfigurationException, SAXException, IOException {
		ArrayList<String> queryResult = new ArrayList<String>();
		StringBuffer result = new StringBuffer();
		DocumentBuilder db = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		Document doc = db.parse(new InputSource(new StringReader(resultXML)));
		NodeList nodeList = doc.getDocumentElement().getChildNodes();
		for (int i = 0; i < nodeList.getLength(); i++) {
			Node node = nodeList.item(i);
			if (node.getNodeType() == Node.ELEMENT_NODE) {
				Element elem = (Element) node;
				String val = elem.getElementsByTagName("xqllib:var").item(0).getChildNodes().item(0).getNodeValue();
				result.append("\t" + val + "\n");
				queryResult.add(val);
			}
		}
		if (result.length() > 0)
			result.deleteCharAt(result.length() - 1);
		logger.trace("XQuery query results are shown as follows:\n" + result.toString());
		return queryResult;
	}

	/**
	 * Collect query result quality metrics.
	 * 
	 * @param query
	 *            ID. Query ID.
	 * @param queryResults
	 *            Query results.
	 */
	private void evaluatePrecisionRecall(int queryID, ArrayList<String> queryResults) {
		ArrayList<String> gt = groundTruth.get(queryID);

		metric.numberOfMatchingDevice = gt.size();
		metric.numberOfNonMatchingDevice = devNumber - metric.numberOfMatchingDevice;
		metric.numberOfResultsRetrieved = queryResults.size();

		int numberOfRelevantRetrieved = 0;
		for (String str : queryResults) {
			if (gt.contains(str))
				numberOfRelevantRetrieved++;
		}
		metric.numberOfRelevantRetrieved = numberOfRelevantRetrieved;

		metric.precision = (metric.numberOfResultsRetrieved == 0) ? ((metric.numberOfMatchingDevice == 0) ? 1 : 0)
				: (double) metric.numberOfRelevantRetrieved / metric.numberOfResultsRetrieved;
		metric.recall = (metric.numberOfMatchingDevice == 0) ? ((metric.numberOfResultsRetrieved == 0) ? 1 : 0)
				: (double) metric.numberOfRelevantRetrieved / metric.numberOfMatchingDevice;
		metric.f_measure = (metric.precision == 0 && metric.recall == 0) ? 0
				: 2 * metric.precision * metric.recall / (metric.precision + metric.recall);
	}
}

/**
 * Implement Comparator to compare files based on file names.
 * 
 * @author Yanji Chen
 * @version 1.0
 * @since 2019-10-02
 */
class FileComparator implements Comparator<File> {
	@Override
	public int compare(File o1, File o2) {
		return Integer.compare(extractNumber(o1.getName()), extractNumber(o2.getName()));
	}

	/**
	 * Extract number within the file name.
	 * 
	 * @param name
	 *            File name.
	 * @return Number within the file name.
	 */
	private int extractNumber(String name) {
		int i = 0;
		try {
			int e = name.lastIndexOf('.');
			String number = name.substring(5, e);
			i = Integer.parseInt(number);
		} catch (Exception e) {
			// if filename does not match the format then default to 0
			i = 0;
		}
		return i;
	}
}

/**
 * Implement Comparator to compare directory based on directory names.
 * 
 * @author Yanji Chen
 * @version 1.0
 * @since 2020-04-04
 */
class DirectoryComparator implements Comparator<File> {
	@Override
	public int compare(File o1, File o2) {
		return Integer.compare(extractNumber(o1.getName()), extractNumber(o2.getName()));
	}

	/**
	 * Extract number within the file name.
	 * 
	 * @param name
	 *            File name.
	 * @return Number within the file name.
	 */
	private int extractNumber(String name) {
		int i = 0;
		try {
			String number = name.substring(1, name.length());
			i = Integer.parseInt(number);
		} catch (Exception e) {
			// if filename does not match the format then default to 0
			i = 0;
		}
		return i;
	}
}
