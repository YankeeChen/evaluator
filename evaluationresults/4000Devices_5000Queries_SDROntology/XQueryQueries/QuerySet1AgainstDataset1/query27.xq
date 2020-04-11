import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_TrackingRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TrackingRadar"]
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:about)
    where fn:exists($node_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_TrackingRadar_0 in $doc_ObjectDescription
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:about)
    for $node_ContinuousWaveRadarModulation_0 in $node_TrackingRadar_0/RFDevice:supportsSpectrumSensing
    let $value_ContinuousWaveRadarModulation_0 := fn:data($node_ContinuousWaveRadarModulation_0/@rdf:resource)
    where fn:exists($value_ContinuousWaveRadarModulation_0) and fn:exists($node_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadarModulation_0">{$value_ContinuousWaveRadarModulation_0}</xqllib:var>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 := xqllib:and($GRAPH_0,$GRAPH_1,("TrackingRadar_0"))
  return
    $GRAPH_2
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("TrackingRadar_0"))),("TrackingRadar_0"))
