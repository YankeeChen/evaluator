import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace sf = "http://www.opengis.net/ont/sf#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200mini_i_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200mini-i"]
    let $value_USRPB200mini_i_0 := fn:data($node_USRPB200mini_i_0/@rdf:about)
    where fn:exists($node_USRPB200mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_i_0">{$value_USRPB200mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPB200mini_i_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_USRPB200mini_i_0 := fn:data($node_USRPB200mini_i_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPB200mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPB200mini_i_0">{$value_USRPB200mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Situation_0) and $node_Situation_0/Nuvio:expresses/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpatialAreaUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_FixedBandwidthSensing_0 in $node_Entity_0/Nuvio:participatesIn
    let $value_FixedBandwidthSensing_0 := fn:data($node_FixedBandwidthSensing_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_FixedBandwidthSensing_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="FixedBandwidthSensing_0">{$value_FixedBandwidthSensing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_FixedBandwidthSensing_0 in $node_Attribute_0/RFDevice:hasBandwidth
    let $value_FixedBandwidthSensing_0 := fn:data($node_FixedBandwidthSensing_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_FixedBandwidthSensing_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="FixedBandwidthSensing_0">{$value_FixedBandwidthSensing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("FixedBandwidthSensing_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_4,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("Entity_0"))
  let $GRAPH_12 :=  
    for $node_LinearRing_0 in $doc_ObjectDescription
    let $value_LinearRing_0 := fn:data($node_LinearRing_0/@rdf:about)
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_LinearRing_0) and fn:exists($node_Situation_0) and $node_LinearRing_0/Nuvio:relevantIndividual/@rdf:resource = $value_Situation_0
    return
      <xqllib:result>
        <xqllib:var name="LinearRing_0">{$value_LinearRing_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_CompositeCurve_0 in $doc_ObjectDescription
    let $value_CompositeCurve_0 := fn:data($node_CompositeCurve_0/@rdf:about)
    for $node_Situation_0 in $node_CompositeCurve_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_CompositeCurve_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeCurve_0">{$value_CompositeCurve_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_CompositeCurve_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#CompositeCurve"]
    let $value_CompositeCurve_0 := fn:data($node_CompositeCurve_0/@rdf:about)
    where fn:exists($node_CompositeCurve_0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeCurve_0">{$value_CompositeCurve_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("CompositeCurve_0"))
  let $GRAPH_16 := ($GRAPH_12,$GRAPH_15)
  let $GRAPH_17 :=  
    for $node_LinearRing_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/sf#LinearRing"]
    let $value_LinearRing_0 := fn:data($node_LinearRing_0/@rdf:about)
    where fn:exists($node_LinearRing_0)
    return
      <xqllib:result>
        <xqllib:var name="LinearRing_0">{$value_LinearRing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := ($GRAPH_16,$GRAPH_17)
  let $GRAPH_19 := xqllib:and($GRAPH_9,$GRAPH_18,())
  let $GRAPH_20 := xqllib:and($GRAPH_2,$GRAPH_19,("Entity_0","Situation_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_1,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_0,$GRAPH_21,("USRPB200mini_i_0"))
  return
    $GRAPH_22
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200mini_i_0"))),("USRPB200mini_i_0"))
