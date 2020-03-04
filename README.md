# Benchmark for Metrics-based Comparison of XML and OWL based Approaches to Representing and Querying Cognitive Radio Capabilities 

## Instructions 

### Step 1: Initialize repositories
#### 1.1 Install, setup and run Fuseki2

* Download a binary distribution of [Fuseki2](https://jena.apache.org/download/)

* Unpack the archive

* Navigate to the unpacked directory

* Create a directory, e.g. tmp

* Run the Fuseki2 server using the following command (replace `<dir>` with the name of the directory created above):

  In UNIX/Linux:
`java -jar fuseki-server.jar -update -loc ./<dir> /ds`

  In Windows:
`java -jar fuseki-server.jar -update -loc .\<dir> /ds`

#### 1.2 Run DeVISor

* Run DeVISor-1.1.2.jar in ./divisor

  **Example**: `java -jar deVISor-1.1.2.jar`

#### 1.3 Install, setup and run BaseX

* Download the latest version of [BaseX](http://basex.org/products/download/all-downloads/) jar file

* Run BaseX jar file

  **Example**: `java -cp BaseX866.jar org.basex.BaseXServer`
  
### Step 2: Run benchmark
The benchmark supports three modes: evaluation mode, transform mode and help mode. To run the benchmark, users are required to choose one of them with corresponding commands.
#### Usage
```console
# Evaluation mode: derive metrics-based evalaution results with specified datasets and query sets. SPARQL queries are in ./SPARQLqueries whereas XQuery queries are in ./XQueryqueries.
$ java -jar evaluator-1.0-SNAPSHOT.jar -datasetURI <URI> -devNumber <NUMBER> [-completeOntologyDirecotry <PATH>] [-testOntologyDirecotry <PATH>]
```
  
`-datasetURI <URI>` is required and states the URI of the device descriptions in RDF/XML.

`-devNumber <NUMBER>` is required and states the number of device descriptions.

`-completeOntologyDirecotry <PATH>` is optional and states the directory of the most complete ontology (TBox); ./ontoloiges/SDROntology/BenchmarkOntology/ by default.

`-testOntologyDirecotry <PATH>` is optional and states the parent directory of the test ontologies (TBox); ./ontoloiges/SDROntology/TestOntology/ by default.

  **Example**: `java -jar evaluator-1.0-SNAPSHOT.jar -datasetURI file:/Users/yanji/Dropbox/workspace/evaluator/evaluationresults/50Devices_1000Queries_SDROntology/Datasets/DeviceDescription50.rdf -devNumber 50`
  
```console
# Transform mode: Transform SPARQL queries to XQuery queries (for Windows only).
$ java -jar evaluator-1.0-SNAPSHOT.jar -t -datasetURI <URI> -devNumber <NUMBER>
```
```console
# Help mode: Describe the usage of arguments.
$ java -jar evaluator-1.0-SNAPSHOT.jar -h
```

## Contact
Yanji Chen

Lab of Info and Software Fusion

ECE Department, Northeastern University, MA, USA

Email:chen.yanj@husky.neu.edu

Personal website: https://sites.google.com/view/yanjichen0101/home?authuser=0

