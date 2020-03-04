import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_Half_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Half-DuplexCommunicationsSystem"]
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Half_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Half_DuplexCommunicationsSystem_0 in $node_Entity_0/RFDevice:isProducerOf
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Half_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_Entity_0 in $node_Situation_0/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Antenna"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AmplitudeModulation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Entity_0"))
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DataValue0 in $node_Entity_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := $GRAPH_6[(data(xqllib:var[@name="DataValue0"]) >= -1464576718)]
  let $GRAPH_8 := xqllib:and($GRAPH_5,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NoiseFigure"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/Nuvio:hasValue
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_PulseDopplerRadarModulation_0 in $node_Entity_0/Nuvio:participatesIn
    let $value_PulseDopplerRadarModulation_0 := fn:data($node_PulseDopplerRadarModulation_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_PulseDopplerRadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="PulseDopplerRadarModulation_0">{$value_PulseDopplerRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_PulseDopplerRadarModulation_0 in $doc_ObjectDescription
    let $value_PulseDopplerRadarModulation_0 := fn:data($node_PulseDopplerRadarModulation_0/@rdf:about)
    for $node_Time_0 in $node_PulseDopplerRadarModulation_0/RFDevice:hasMaxOutputPower
    let $value_Time_0 := fn:data($node_Time_0/@rdf:resource)
    where fn:exists($node_PulseDopplerRadarModulation_0) and fn:exists($value_Time_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadarModulation_0">{$value_PulseDopplerRadarModulation_0}</xqllib:var>
        <xqllib:var name="Time_0">{$value_Time_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Time_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Time"]
    let $value_Time_0 := fn:data($node_Time_0/@rdf:about)
    where fn:exists($node_Time_0)
    return
      <xqllib:result>
        <xqllib:var name="Time_0">{$value_Time_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Time_0 in $node_Var1/Nuvio:hasValue
    let $value_Time_0 := fn:data($node_Time_0/@rdf:resource)
    where fn:exists($value_Time_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Time_0">{$value_Time_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PositiveDecimalValue"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    for $node_Var1 in $node_Entity_1/Nuvio:hasUnitOfMeasure
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Entity_1) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := xqllib:and($GRAPH_16,$GRAPH_17,("Var1"))
  let $GRAPH_19 := xqllib:and($GRAPH_15,$GRAPH_18,("Var1"))
  let $GRAPH_20 := xqllib:and($GRAPH_14,$GRAPH_19,("Time_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_13,$GRAPH_20,("Time_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_12,$GRAPH_21,("PulseDopplerRadarModulation_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_11,$GRAPH_22,("Entity_0"))
  let $GRAPH_24 := xqllib:optional($GRAPH_8,$GRAPH_23,("Entity_0"))
  let $GRAPH_25 := xqllib:optional($GRAPH_2,$GRAPH_24,("Entity_0"))
  let $GRAPH_26 :=  
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_TrackingRadar_0 in $doc_ObjectDescription
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:about)
    where fn:exists($node_Situation_0) and fn:exists($node_TrackingRadar_0) and $node_TrackingRadar_0/Nuvio:relevantIndividual/@rdf:resource = $value_Situation_0
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_27 :=  
    for $node_Platform_0 in $doc_ObjectDescription
    let $value_Platform_0 := fn:data($node_Platform_0/@rdf:about)
    for $node_TrackingRadar_0 in $node_Platform_0/RFDevice:isDeployedOn
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:resource)
    where fn:exists($node_Platform_0) and fn:exists($value_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Platform_0">{$value_Platform_0}</xqllib:var>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_28 :=  
    for $node_Platform_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Platform"]
    let $value_Platform_0 := fn:data($node_Platform_0/@rdf:about)
    where fn:exists($node_Platform_0)
    return
      <xqllib:result>
        <xqllib:var name="Platform_0">{$value_Platform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_29 := xqllib:and($GRAPH_27,$GRAPH_28,("Platform_0"))
  let $GRAPH_30 := xqllib:and($GRAPH_26,$GRAPH_29,("TrackingRadar_0"))
  let $GRAPH_31 := xqllib:and($GRAPH_25,$GRAPH_30,("Situation_0"))
  let $GRAPH_32 := xqllib:and($GRAPH_1,$GRAPH_31,("Entity_0"))
  let $GRAPH_33 := xqllib:and($GRAPH_0,$GRAPH_32,("Half_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_33
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Half_DuplexCommunicationsSystem_0"))),("Half_DuplexCommunicationsSystem_0"))
