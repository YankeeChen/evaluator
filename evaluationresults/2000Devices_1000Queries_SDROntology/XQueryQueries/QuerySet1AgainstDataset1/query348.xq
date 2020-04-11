import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RFSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RFSystem"]
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:about)
    where fn:exists($node_RFSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RFSystem_0 in $doc_ObjectDescription
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:about)
    for $node_IEDJammer_0 in $node_RFSystem_0/Nuvio:aggregateOf
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:resource)
    where fn:exists($value_IEDJammer_0) and fn:exists($node_RFSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Artix7FPGA_0 in $doc_ObjectDescription
    let $value_Artix7FPGA_0 := fn:data($node_Artix7FPGA_0/@rdf:about)
    for $node_IEDJammer_0 in $node_Artix7FPGA_0/Nuvio:aggregateOf
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:resource)
    where fn:exists($node_Artix7FPGA_0) and fn:exists($value_IEDJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="Artix7FPGA_0">{$value_Artix7FPGA_0}</xqllib:var>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Artix7FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Artix7FPGA"]
    let $value_Artix7FPGA_0 := fn:data($node_Artix7FPGA_0/@rdf:about)
    where fn:exists($node_Artix7FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Artix7FPGA_0">{$value_Artix7FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Artix7FPGA_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("IEDJammer_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("RFSystem_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RFSystem_0"))),("RFSystem_0"))
