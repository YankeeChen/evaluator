# Benchmark for Metrics-based Comparison of XML and OWL based Approaches to Representing and Querying Cognitive Radio Capabilities 

## Instructions 

### Step 1: Initialize repositories

#### 1.1 Run DeVISor

* Run DeVISor-1.1.3.jar in ./devisor

  **Example**: `java -jar deVISor-1.1.3.jar`

#### 1.2 Install, setup and run BaseX

* Download the latest version of [BaseX](http://basex.org/products/download/all-downloads/) jar file

* Run BaseX jar file

  **Example**: `java -cp BaseX866.jar org.basex.BaseXServer`
  
### Step 2: Run benchmark
The benchmark supports three modes: evaluation mode, transform mode and help mode. To run the benchmark, users are required to choose one of them with corresponding commands.
#### Usage
```console
# Evaluation mode: derive metrics-based evalaution results with specified datasets and query sets. Note that XQuery queries must be in ./XQueryqueries.
$ java -jar evaluator-1.0-SNAPSHOT.jar -datasetURI <URI> -devNumber <NUMBER> [-completeOntologyDirecotry <PATH>] [-testOntologyDirecotry <PATH>] [-sparqlQueryDirecotry <PATH>]
```
  
`-datasetURI <URI>` is required and states the URI of the device descriptions in RDF/XML.

`-devNumber <NUMBER>` is required and states the number of device descriptions.

`-completeOntologyDirecotry <PATH>` is optional and states the directory of the most complete ontology (TBox); ./ontoloiges/SDROntology/BenchmarkOntology/ by default.

`-testOntologyDirecotry <PATH>` is optional and states the parent directory of the test ontologies (TBox); ./ontoloiges/SDROntology/TestOntology/ by default.

`-sparqlQueryDirecotry <PATH>` is optional and states the directory of the SPARQL queries; ./SPARQLqueries/ by default.

  **Example**: `java -jar evaluator-1.0-SNAPSHOT.jar -datasetURI file:/Users/yanji/Dropbox/workspace/evaluator/evaluationresults/4000Devices_5000Queries_SDROntology/Datasets/Dataset1/DeviceDescription4000.rdf -devNumber 4000 -sparqlQueryDirectory /Users/yanji/Dropbox/workspace/evaluator/evaluationresults/4000Devices_5000Queries_SDROntology/SPARQLQueries/QuerySet1AgainstDataset1`
  
```console
# Transform mode: Transform SPARQL queries to XQuery queries (for Windows only). Note that XQuery queries must be in ./XQueryqueries.
$ java -jar evaluator-1.0-SNAPSHOT.jar -t -datasetURI <URI> -devNumber <NUMBER> [-sparqlQueryDirecotry <PATH>]
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

