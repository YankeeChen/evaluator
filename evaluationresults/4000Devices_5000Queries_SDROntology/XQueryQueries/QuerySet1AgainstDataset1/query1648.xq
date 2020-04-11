import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SurveillanceRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SurveillanceRadar"]
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:about)
    where fn:exists($node_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_SurveillanceRadar_0 in $doc_ObjectDescription
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:about)
    for $node_Object_0 in $node_SurveillanceRadar_0/RFDevice:isProducerOf
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Angle_0 in $doc_ObjectDescription
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_Angle_0) and fn:exists($node_Object_0) and $node_Angle_0/RFDevice:hasLevel/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Angle_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Angle"]
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    where fn:exists($node_Angle_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_LatitudeValueInDegree_0 in $doc_ObjectDescription
    let $value_LatitudeValueInDegree_0 := fn:data($node_LatitudeValueInDegree_0/@rdf:about)
    for $node_Angle_0 in $node_LatitudeValueInDegree_0/Nuvio:hasValue
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:resource)
    where fn:exists($value_Angle_0) and fn:exists($node_LatitudeValueInDegree_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="LatitudeValueInDegree_0">{$value_LatitudeValueInDegree_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_LatitudeValueInDegree_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LatitudeValueInDegree"]
    let $value_LatitudeValueInDegree_0 := fn:data($node_LatitudeValueInDegree_0/@rdf:about)
    where fn:exists($node_LatitudeValueInDegree_0)
    return
      <xqllib:result>
        <xqllib:var name="LatitudeValueInDegree_0">{$value_LatitudeValueInDegree_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("LatitudeValueInDegree_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Angle_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Angle_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Object_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("SurveillanceRadar_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SurveillanceRadar_0"))),("SurveillanceRadar_0"))
