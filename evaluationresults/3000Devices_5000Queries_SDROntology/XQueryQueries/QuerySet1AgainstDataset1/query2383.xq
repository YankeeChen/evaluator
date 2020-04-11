import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_MonostaticRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#MonostaticRadar"]
    let $value_MonostaticRadar_0 := fn:data($node_MonostaticRadar_0/@rdf:about)
    where fn:exists($node_MonostaticRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="MonostaticRadar_0">{$value_MonostaticRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_MonostaticRadar_0 in $node_Object_0/Nuvio:aggregateOf
    let $value_MonostaticRadar_0 := fn:data($node_MonostaticRadar_0/@rdf:resource)
    where fn:exists($value_MonostaticRadar_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="MonostaticRadar_0">{$value_MonostaticRadar_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
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
    for $node_LatitudeValueInRadian_0 in $doc_ObjectDescription
    let $value_LatitudeValueInRadian_0 := fn:data($node_LatitudeValueInRadian_0/@rdf:about)
    for $node_Angle_0 in $node_LatitudeValueInRadian_0/Nuvio:hasValue
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:resource)
    where fn:exists($value_Angle_0) and fn:exists($node_LatitudeValueInRadian_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="LatitudeValueInRadian_0">{$value_LatitudeValueInRadian_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_LatitudeValueInRadian_0 in $doc_ObjectDescription
    let $value_LatitudeValueInRadian_0 := fn:data($node_LatitudeValueInRadian_0/@rdf:about)
    for $node_DataValue0 in $node_LatitudeValueInRadian_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_LatitudeValueInRadian_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="LatitudeValueInRadian_0">{$value_LatitudeValueInRadian_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := $GRAPH_5[(data(xqllib:var[@name="DataValue0"]) > 1256746320)]
  let $GRAPH_7 := xqllib:and($GRAPH_4,$GRAPH_6,("LatitudeValueInRadian_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_3,$GRAPH_7,("Angle_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_2,$GRAPH_8,("Angle_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_1,$GRAPH_9,("Object_0"))
  let $GRAPH_11 := xqllib:optional($GRAPH_0,$GRAPH_10,("MonostaticRadar_0"))
  return
    $GRAPH_11
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("MonostaticRadar_0"))),("MonostaticRadar_0"))
