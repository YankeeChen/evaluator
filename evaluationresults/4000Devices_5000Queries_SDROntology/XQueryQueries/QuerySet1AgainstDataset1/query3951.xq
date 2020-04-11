import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseRadar"]
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:about)
    where fn:exists($node_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_PulseRadar_0 in $doc_ObjectDescription
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:about)
    for $node_Jammer_0 in $node_PulseRadar_0/Nuvio:aggregateOf
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:resource)
    where fn:exists($value_Jammer_0) and fn:exists($node_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Jammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Jammer"]
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:about)
    where fn:exists($node_Jammer_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_XC6SLX75FPGA_0 in $doc_ObjectDescription
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:about)
    for $node_Jammer_0 in $node_XC6SLX75FPGA_0/Nuvio:compositeOf
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:resource)
    where fn:exists($value_Jammer_0) and fn:exists($node_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
        <xqllib:var name="XC6SLX75FPGA_0">{$value_XC6SLX75FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_XC6SLX75FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC6SLX75FPGA"]
    let $value_XC6SLX75FPGA_0 := fn:data($node_XC6SLX75FPGA_0/@rdf:about)
    where fn:exists($node_XC6SLX75FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC6SLX75FPGA_0">{$value_XC6SLX75FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("XC6SLX75FPGA_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Jammer_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Jammer_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("PulseRadar_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseRadar_0"))),("PulseRadar_0"))
