import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
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
    for $node_RadarModulation_0 in $doc_ObjectDescription
    let $value_RadarModulation_0 := fn:data($node_RadarModulation_0/@rdf:about)
    for $node_PulseRadar_0 in $node_RadarModulation_0/RFDevice:hasCapability
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:resource)
    where fn:exists($value_PulseRadar_0) and fn:exists($node_RadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
        <xqllib:var name="RadarModulation_0">{$value_RadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_RadarModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarModulation"]
    let $value_RadarModulation_0 := fn:data($node_RadarModulation_0/@rdf:about)
    where fn:exists($node_RadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarModulation_0">{$value_RadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("RadarModulation_0"))
  let $GRAPH_4 := xqllib:and($GRAPH_0,$GRAPH_3,("PulseRadar_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseRadar_0"))),("PulseRadar_0"))
