import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
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
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_TrackingRadar_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_UnitOfMeasure_0 in $doc_ObjectDescription
    let $value_UnitOfMeasure_0 := fn:data($node_UnitOfMeasure_0/@rdf:about)
    for $node_Entity_0 in $node_UnitOfMeasure_0/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_UnitOfMeasure_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="UnitOfMeasure_0">{$value_UnitOfMeasure_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IEDJammer"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_FeatureDetection_0 in $doc_ObjectDescription
    let $value_FeatureDetection_0 := fn:data($node_FeatureDetection_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_FeatureDetection_0) and $node_FeatureDetection_0/RFDevice:supportsTransmitting/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="FeatureDetection_0">{$value_FeatureDetection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_FeatureDetection_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FeatureDetection"]
    let $value_FeatureDetection_0 := fn:data($node_FeatureDetection_0/@rdf:about)
    where fn:exists($node_FeatureDetection_0)
    return
      <xqllib:result>
        <xqllib:var name="FeatureDetection_0">{$value_FeatureDetection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("FeatureDetection_0"))
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := ($GRAPH_7,$GRAPH_8)
  let $GRAPH_10 :=  
    for $node_AnalogModulation_0 in $doc_ObjectDescription
    let $value_AnalogModulation_0 := fn:data($node_AnalogModulation_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_AnalogModulation_0) and fn:exists($node_Entity_0) and $node_AnalogModulation_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="AnalogModulation_0">{$value_AnalogModulation_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:optional($GRAPH_9,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:optional($GRAPH_3,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 :=  
    for $node_UnitOfMeasure_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_UnitOfMeasure_0 := fn:data($node_UnitOfMeasure_0/@rdf:about)
    where fn:exists($node_UnitOfMeasure_0)
    return
      <xqllib:result>
        <xqllib:var name="UnitOfMeasure_0">{$value_UnitOfMeasure_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,())
  let $GRAPH_15 := xqllib:and($GRAPH_2,$GRAPH_14,("Entity_0","UnitOfMeasure_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_1,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_0,$GRAPH_16,("TrackingRadar_0"))
  return
    $GRAPH_17
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("TrackingRadar_0"))),("TrackingRadar_0"))
