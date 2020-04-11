import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseRadar"]
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:about)
    where fn:exists($node_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_PulseRadar_0 in $doc_ObjectDescription
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:about)
    for $node_Entity_0 in $node_PulseRadar_0/RFDevice:isProducerOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Value_0 in $node_Entity_0/Nuvio:expresses
    let $value_Value_0 := fn:data($node_Value_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Value_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPN310_0 in $doc_ObjectDescription
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_USRPN310_0) and $node_USRPN310_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Clothoid_0 in $doc_ObjectDescription
    let $value_Clothoid_0 := fn:data($node_Clothoid_0/@rdf:about)
    for $node_Entity_0 in $node_Clothoid_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_Clothoid_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Clothoid_0">{$value_Clothoid_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Clothoid_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#Clothoid"]
    let $value_Clothoid_0 := fn:data($node_Clothoid_0/@rdf:about)
    where fn:exists($node_Clothoid_0)
    return
      <xqllib:result>
        <xqllib:var name="Clothoid_0">{$value_Clothoid_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Clothoid_0"))
  let $GRAPH_8 :=  
    for $node_USRPN310_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN310"]
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:about)
    where fn:exists($node_USRPN310_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPN310_0 in $node_Var0/RFDevice:hasDataTransmissionMode
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:resource)
    where fn:exists($value_USRPN310_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("USRPN310_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_7,$GRAPH_10,())
  let $GRAPH_12 := xqllib:and($GRAPH_4,$GRAPH_11,("Entity_0","USRPN310_0"))
  let $GRAPH_14 :=  
    for $node_CyclostationaryDetection_0 in $doc_ObjectDescription
    let $value_CyclostationaryDetection_0 := fn:data($node_CyclostationaryDetection_0/@rdf:about)
    for $node_Entity_0 in $node_CyclostationaryDetection_0/Nuvio:hasSubprocess
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_CyclostationaryDetection_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CyclostationaryDetection_0">{$value_CyclostationaryDetection_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Percentage"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Entity_0 in $node_Var1/Nuvio:hasValue
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := xqllib:optional($GRAPH_15,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_14,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 :=  
    for $node_ContinuousWaveRadarModulation_0 in $doc_ObjectDescription
    let $value_ContinuousWaveRadarModulation_0 := fn:data($node_ContinuousWaveRadarModulation_0/@rdf:about)
    for $node_Entity_0 in $node_ContinuousWaveRadarModulation_0/RFDevice:hasCapability
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_ContinuousWaveRadarModulation_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadarModulation_0">{$value_ContinuousWaveRadarModulation_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := ($GRAPH_18,$GRAPH_19)
  let $GRAPH_21 := xqllib:optional($GRAPH_12,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := ($GRAPH_3,$GRAPH_21)
  let $GRAPH_23 :=  
    for $node_Value_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    where fn:exists($node_Value_0)
    return
      <xqllib:result>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 := xqllib:and($GRAPH_22,$GRAPH_23,("Value_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_1,$GRAPH_24,("Entity_0"))
  let $GRAPH_26 := xqllib:and($GRAPH_0,$GRAPH_25,("PulseRadar_0"))
  return
    $GRAPH_26
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseRadar_0"))),("PulseRadar_0"))
