import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RadarSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarSystem"]
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    where fn:exists($node_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadarSystem_0 in $doc_ObjectDescription
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    for $node_Process_0 in $node_RadarSystem_0/RFDevice:supportsTuning
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($value_Process_0) and fn:exists($node_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_PulseDopplerRadarModulation_0 in $doc_ObjectDescription
    let $value_PulseDopplerRadarModulation_0 := fn:data($node_PulseDopplerRadarModulation_0/@rdf:about)
    for $node_Process_0 in $node_PulseDopplerRadarModulation_0/Nuvio:hasSubprocess
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($value_Process_0) and fn:exists($node_PulseDopplerRadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="PulseDopplerRadarModulation_0">{$value_PulseDopplerRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_PulseDopplerRadarModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseDopplerRadarModulation"]
    let $value_PulseDopplerRadarModulation_0 := fn:data($node_PulseDopplerRadarModulation_0/@rdf:about)
    where fn:exists($node_PulseDopplerRadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadarModulation_0">{$value_PulseDopplerRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := ($GRAPH_3,$GRAPH_4)
  let $GRAPH_6 := xqllib:and($GRAPH_1,$GRAPH_5,("Process_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_0,$GRAPH_6,("RadarSystem_0"))
  return
    $GRAPH_7
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
