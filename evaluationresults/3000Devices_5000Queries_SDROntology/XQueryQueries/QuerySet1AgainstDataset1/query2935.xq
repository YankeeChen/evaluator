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
    for $node_Transceiving_0 in $doc_ObjectDescription
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    for $node_Half_DuplexCommunicationsSystem_0 in $node_Transceiving_0/RFDevice:supportsJamming
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_Half_DuplexCommunicationsSystem_0) and fn:exists($node_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Transceiving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiving"]
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    where fn:exists($node_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Transceiving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Transceiving_0) and $node_Entity_0/Nuvio:hasProcessQuality/@rdf:resource = $value_Transceiving_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicProtection"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LongitudeValueInDegree"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
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
  let $GRAPH_8 := $GRAPH_7[(data(xqllib:var[@name="DataValue0"]) <= 1708012147)]
  let $GRAPH_9 := xqllib:and($GRAPH_6,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectricCharge"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
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
  let $GRAPH_12 :=  
    for $node_UnitOfMeasure_0 in $doc_ObjectDescription
    let $value_UnitOfMeasure_0 := fn:data($node_UnitOfMeasure_0/@rdf:about)
    for $node_Var0 in $node_UnitOfMeasure_0/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_UnitOfMeasure_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="UnitOfMeasure_0">{$value_UnitOfMeasure_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("Var0"))
  let $GRAPH_14 := xqllib:and($GRAPH_10,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_9,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_5,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 :=  
    for $node_AdjustableBandwidthSensing_0 in $doc_ObjectDescription
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:about)
    for $node_Entity_0 in $node_AdjustableBandwidthSensing_0/Nuvio:participatesIn
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_AdjustableBandwidthSensing_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_AdjustableBandwidthSensing_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AdjustableBandwidthSensing"]
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:about)
    where fn:exists($node_AdjustableBandwidthSensing_0)
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 :=  
    for $node_Frequency_0 in $doc_ObjectDescription
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:about)
    for $node_AdjustableBandwidthSensing_0 in $node_Frequency_0/RFDevice:hasBandwidth
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:resource)
    where fn:exists($value_AdjustableBandwidthSensing_0) and fn:exists($node_Frequency_0)
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Frequency_0 in $node_Var1/Nuvio:hasValue
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:resource)
    where fn:exists($value_Frequency_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 := xqllib:and($GRAPH_19,$GRAPH_20,("Frequency_0"))
  let $GRAPH_22 :=  
    for $node_FreqencyRange_0 in $doc_ObjectDescription
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:about)
    for $node_AdjustableBandwidthSensing_0 in $node_FreqencyRange_0/RFDevice:hasBandwidthRange
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:resource)
    where fn:exists($value_AdjustableBandwidthSensing_0) and fn:exists($node_FreqencyRange_0)
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 :=  
    for $node_FreqencyRange_0 in $doc_ObjectDescription
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:about)
    for $node_Velocity_0 in $node_FreqencyRange_0/RFDevice:hasMax
    let $value_Velocity_0 := fn:data($node_Velocity_0/@rdf:resource)
    where fn:exists($node_FreqencyRange_0) and fn:exists($value_Velocity_0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
        <xqllib:var name="Velocity_0">{$value_Velocity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 :=  
    for $node_Velocity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Velocity"]
    let $value_Velocity_0 := fn:data($node_Velocity_0/@rdf:about)
    where fn:exists($node_Velocity_0)
    return
      <xqllib:result>
        <xqllib:var name="Velocity_0">{$value_Velocity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_25 := xqllib:and($GRAPH_23,$GRAPH_24,("Velocity_0"))
  let $GRAPH_26 := xqllib:and($GRAPH_22,$GRAPH_25,("FreqencyRange_0"))
  let $GRAPH_27 := xqllib:and($GRAPH_21,$GRAPH_26,("AdjustableBandwidthSensing_0"))
  let $GRAPH_28 := xqllib:and($GRAPH_18,$GRAPH_27,("AdjustableBandwidthSensing_0"))
  let $GRAPH_29 := xqllib:and($GRAPH_17,$GRAPH_28,("AdjustableBandwidthSensing_0"))
  let $GRAPH_30 := xqllib:and($GRAPH_16,$GRAPH_29,("Entity_0"))
  let $GRAPH_31 := xqllib:and($GRAPH_4,$GRAPH_30,("Entity_0"))
  let $GRAPH_32 := xqllib:and($GRAPH_3,$GRAPH_31,("Entity_0"))
  let $GRAPH_33 := xqllib:and($GRAPH_2,$GRAPH_32,("Transceiving_0"))
  let $GRAPH_34 := xqllib:and($GRAPH_1,$GRAPH_33,("Transceiving_0"))
  let $GRAPH_35 := xqllib:and($GRAPH_0,$GRAPH_34,("Half_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_35
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Half_DuplexCommunicationsSystem_0"))),("Half_DuplexCommunicationsSystem_0"))
