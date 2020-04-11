import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
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
    for $node_DirectConversionReceiver_0 in $doc_ObjectDescription
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:about)
    for $node_PulseRadar_0 in $node_DirectConversionReceiver_0/Nuvio:aggregateOf
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:resource)
    where fn:exists($node_DirectConversionReceiver_0) and fn:exists($value_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_HardwareComponent_0 in $doc_ObjectDescription
    let $value_HardwareComponent_0 := fn:data($node_HardwareComponent_0/@rdf:about)
    for $node_DirectConversionReceiver_0 in $node_HardwareComponent_0/Nuvio:aggregateOf
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:resource)
    where fn:exists($value_DirectConversionReceiver_0) and fn:exists($node_HardwareComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="HardwareComponent_0">{$value_HardwareComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_HardwareComponent_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#HardwareComponent"]
    let $value_HardwareComponent_0 := fn:data($node_HardwareComponent_0/@rdf:about)
    where fn:exists($node_HardwareComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="HardwareComponent_0">{$value_HardwareComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("HardwareComponent_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("DirectConversionReceiver_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("PulseRadar_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseRadar_0"))),("PulseRadar_0"))
