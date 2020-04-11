import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
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
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_TrackingRadar_0 in $node_Process_0/RFDevice:supportsSpectrumSensing
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:resource)
    where fn:exists($node_Process_0) and fn:exists($value_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_Angle_0 in $node_Process_0/RFDevice:hasMaxSensedPower
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:resource)
    where fn:exists($value_Angle_0) and fn:exists($node_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Angle_0 in $doc_ObjectDescription
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    for $node_LatitudeValueInRadian_0 in $node_Angle_0/Nuvio:hasValue
    let $value_LatitudeValueInRadian_0 := fn:data($node_LatitudeValueInRadian_0/@rdf:resource)
    where fn:exists($node_Angle_0) and fn:exists($value_LatitudeValueInRadian_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="LatitudeValueInRadian_0">{$value_LatitudeValueInRadian_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_LatitudeValueInRadian_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LatitudeValueInRadian"]
    let $value_LatitudeValueInRadian_0 := fn:data($node_LatitudeValueInRadian_0/@rdf:about)
    where fn:exists($node_LatitudeValueInRadian_0)
    return
      <xqllib:result>
        <xqllib:var name="LatitudeValueInRadian_0">{$value_LatitudeValueInRadian_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("LatitudeValueInRadian_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Angle_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Process_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("TrackingRadar_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("TrackingRadar_0"))),("TrackingRadar_0"))
