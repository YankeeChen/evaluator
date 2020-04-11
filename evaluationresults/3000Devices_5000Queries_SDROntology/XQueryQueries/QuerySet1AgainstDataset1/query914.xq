import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE3xx"]
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:about)
    where fn:exists($node_USRPE3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Processor_0 in $doc_ObjectDescription
    let $value_Processor_0 := fn:data($node_Processor_0/@rdf:about)
    for $node_USRPE3xx_0 in $node_Processor_0/Nuvio:compositeOf
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:resource)
    where fn:exists($node_Processor_0) and fn:exists($value_USRPE3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Processor_0">{$value_Processor_0}</xqllib:var>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Processor_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Processor"]
    let $value_Processor_0 := fn:data($node_Processor_0/@rdf:about)
    where fn:exists($node_Processor_0)
    return
      <xqllib:result>
        <xqllib:var name="Processor_0">{$value_Processor_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_XC6SLX150FPGA_0 in $doc_ObjectDescription
    let $value_XC6SLX150FPGA_0 := fn:data($node_XC6SLX150FPGA_0/@rdf:about)
    for $node_Processor_0 in $node_XC6SLX150FPGA_0/Nuvio:aggregateOf
    let $value_Processor_0 := fn:data($node_Processor_0/@rdf:resource)
    where fn:exists($value_Processor_0) and fn:exists($node_XC6SLX150FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Processor_0">{$value_Processor_0}</xqllib:var>
        <xqllib:var name="XC6SLX150FPGA_0">{$value_XC6SLX150FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := ($GRAPH_3,$GRAPH_4)
  let $GRAPH_6 := xqllib:and($GRAPH_1,$GRAPH_5,("Processor_0"))
  let $GRAPH_7 := xqllib:optional($GRAPH_0,$GRAPH_6,("USRPE3xx_0"))
  return
    $GRAPH_7
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE3xx_0"))),("USRPE3xx_0"))
