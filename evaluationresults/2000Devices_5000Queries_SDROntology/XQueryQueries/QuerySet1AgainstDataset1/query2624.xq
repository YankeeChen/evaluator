import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace geosparql = "http://www.opengis.net/ont/geosparql#";
declare namespace sf = "http://www.opengis.net/ont/sf#";
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
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_RFSystem_0 in $node_Var0/RFDevice:hasCapability
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:resource)
    where fn:exists($value_RFSystem_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AdjustableBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_SpatialObject_0 in $doc_ObjectDescription
    let $value_SpatialObject_0 := fn:data($node_SpatialObject_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_SpatialObject_0) and fn:exists($node_Var0) and $node_SpatialObject_0/Nuvio:hasParticipant/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="SpatialObject_0">{$value_SpatialObject_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_MultiLineString_0 in $doc_ObjectDescription
    let $value_MultiLineString_0 := fn:data($node_MultiLineString_0/@rdf:about)
    for $node_SpatialObject_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/geosparql#SpatialObject"]
    let $value_SpatialObject_0 := fn:data($node_SpatialObject_0/@rdf:about)
    where fn:exists($node_MultiLineString_0) and fn:exists($node_SpatialObject_0) and $node_MultiLineString_0/geosparql:rcc8tppi/@rdf:resource = $value_SpatialObject_0
    return
      <xqllib:result>
        <xqllib:var name="MultiLineString_0">{$value_MultiLineString_0}</xqllib:var>
        <xqllib:var name="SpatialObject_0">{$value_SpatialObject_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_MultiLineString_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/sf#MultiLineString"]
    let $value_MultiLineString_0 := fn:data($node_MultiLineString_0/@rdf:about)
    where fn:exists($node_MultiLineString_0)
    return
      <xqllib:result>
        <xqllib:var name="MultiLineString_0">{$value_MultiLineString_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("MultiLineString_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("SpatialObject_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Var0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("RFSystem_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RFSystem_0"))),("RFSystem_0"))
