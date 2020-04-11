import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace geosparql = "http://www.opengis.net/ont/geosparql#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
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
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_RFSystem_0 in $node_Entity_0/RFDevice:isDeployedOn
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_RFSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Situation_0) and $node_Situation_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#OffsetCurve"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Entity_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Entity_0"))
  let $GRAPH_7 :=  
    for $node_CumulativeDetection_0 in $doc_ObjectDescription
    let $value_CumulativeDetection_0 := fn:data($node_CumulativeDetection_0/@rdf:about)
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_CumulativeDetection_0) and fn:exists($node_Situation_0) and $node_CumulativeDetection_0/Nuvio:relevantIndividual/@rdf:resource = $value_Situation_0
    return
      <xqllib:result>
        <xqllib:var name="CumulativeDetection_0">{$value_CumulativeDetection_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Feature_0 in $doc_ObjectDescription
    let $value_Feature_0 := fn:data($node_Feature_0/@rdf:about)
    for $node_Situation_0 in $node_Feature_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_Feature_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Feature_0">{$value_Feature_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Feature_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/geosparql#Feature"]
    let $value_Feature_0 := fn:data($node_Feature_0/@rdf:about)
    for $node_LinearRing_0 in $doc_ObjectDescription
    let $value_LinearRing_0 := fn:data($node_LinearRing_0/@rdf:about)
    where fn:exists($node_Feature_0) and fn:exists($node_LinearRing_0) and $node_LinearRing_0/geosparql:defaultGeometry/@rdf:resource = $value_Feature_0
    return
      <xqllib:result>
        <xqllib:var name="Feature_0">{$value_Feature_0}</xqllib:var>
        <xqllib:var name="LinearRing_0">{$value_LinearRing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_LinearRing_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#LinearRing"]
    let $value_LinearRing_0 := fn:data($node_LinearRing_0/@rdf:about)
    where fn:exists($node_LinearRing_0)
    return
      <xqllib:result>
        <xqllib:var name="LinearRing_0">{$value_LinearRing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("LinearRing_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_8,$GRAPH_11,("Feature_0"))
  let $GRAPH_13 := xqllib:optional($GRAPH_7,$GRAPH_12,("Situation_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_6,$GRAPH_13,("Situation_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_1,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_0,$GRAPH_15,("RFSystem_0"))
  return
    $GRAPH_16
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RFSystem_0"))),("RFSystem_0"))
