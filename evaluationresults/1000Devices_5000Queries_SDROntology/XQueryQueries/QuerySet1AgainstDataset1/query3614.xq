import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseDopplerRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseDopplerRadar"]
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:about)
    where fn:exists($node_PulseDopplerRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_PulseRadarModulation_0 in $doc_ObjectDescription
    let $value_PulseRadarModulation_0 := fn:data($node_PulseRadarModulation_0/@rdf:about)
    for $node_PulseDopplerRadar_0 in $node_PulseRadarModulation_0/RFDevice:supportsTuning
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:resource)
    where fn:exists($value_PulseDopplerRadar_0) and fn:exists($node_PulseRadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
        <xqllib:var name="PulseRadarModulation_0">{$value_PulseRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_PulseRadarModulation_0 in $doc_ObjectDescription
    let $value_PulseRadarModulation_0 := fn:data($node_PulseRadarModulation_0/@rdf:about)
    for $node_Quantity_0 in $node_PulseRadarModulation_0/RFDevice:hasMaxOutputPower
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:resource)
    where fn:exists($node_PulseRadarModulation_0) and fn:exists($value_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadarModulation_0">{$value_PulseRadarModulation_0}</xqllib:var>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("PulseRadarModulation_0"))
  let $GRAPH_4 := xqllib:and($GRAPH_0,$GRAPH_3,("PulseDopplerRadar_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseDopplerRadar_0"))),("PulseDopplerRadar_0"))
