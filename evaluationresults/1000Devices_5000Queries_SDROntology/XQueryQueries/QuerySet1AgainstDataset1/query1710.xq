import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
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
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_TrackingRadar_0 in $node_Object_0/RFDevice:isProducerOf
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_AdjustableBandwidthSensing_0 in $doc_ObjectDescription
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_AdjustableBandwidthSensing_0) and fn:exists($node_Object_0) and $node_AdjustableBandwidthSensing_0/RFDevice:supportsTuning/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_AdjustableBandwidthSensing_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AdjustableBandwidthSensing"]
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:about)
    where fn:exists($node_AdjustableBandwidthSensing_0)
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_QuantityRange_0 in $doc_ObjectDescription
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:about)
    for $node_AdjustableBandwidthSensing_0 in $node_QuantityRange_0/RFDevice:hasBandwidthRange
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:resource)
    where fn:exists($value_AdjustableBandwidthSensing_0) and fn:exists($node_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_QuantityRange_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Frequency_instance56"]/RFDevice:hasMin
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:resource)
    where fn:exists($value_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("QuantityRange_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("AdjustableBandwidthSensing_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("AdjustableBandwidthSensing_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Object_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("TrackingRadar_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("TrackingRadar_0"))),("TrackingRadar_0"))
