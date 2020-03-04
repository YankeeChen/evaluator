import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription100.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ContinuousWaveRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ContinuousWaveRadar"]
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:about)
    where fn:exists($node_ContinuousWaveRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_ContinuousWaveRadar_0 in $node_Var0/RFDevice:supportsSpectrumSensing
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:resource)
    where fn:exists($value_ContinuousWaveRadar_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiving"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Situation_0) and fn:exists($node_Var0) and $node_Situation_0/Nuvio:isExpressedBy/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := ($GRAPH_4,$GRAPH_5)
  let $GRAPH_7 :=  
    for $node_FixedBandwidthSensing_0 in $doc_ObjectDescription
    let $value_FixedBandwidthSensing_0 := fn:data($node_FixedBandwidthSensing_0/@rdf:about)
    for $node_Situation_0 in $node_FixedBandwidthSensing_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_FixedBandwidthSensing_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="FixedBandwidthSensing_0">{$value_FixedBandwidthSensing_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_ARMProcessor_0 in $doc_ObjectDescription
    let $value_ARMProcessor_0 := fn:data($node_ARMProcessor_0/@rdf:about)
    for $node_Situation_0 in $node_ARMProcessor_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_ARMProcessor_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="ARMProcessor_0">{$value_ARMProcessor_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_ARMProcessor_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#ARMProcessor"]
    let $value_ARMProcessor_0 := fn:data($node_ARMProcessor_0/@rdf:about)
    where fn:exists($node_ARMProcessor_0)
    return
      <xqllib:result>
        <xqllib:var name="ARMProcessor_0">{$value_ARMProcessor_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_ARMProcessor_0 in $doc_ObjectDescription
    let $value_ARMProcessor_0 := fn:data($node_ARMProcessor_0/@rdf:about)
    for $node_XilinxZynq7020SoC_0 in $node_ARMProcessor_0/Nuvio:aggregateOf
    let $value_XilinxZynq7020SoC_0 := fn:data($node_XilinxZynq7020SoC_0/@rdf:resource)
    where fn:exists($node_ARMProcessor_0) and fn:exists($value_XilinxZynq7020SoC_0)
    return
      <xqllib:result>
        <xqllib:var name="ARMProcessor_0">{$value_ARMProcessor_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7020SoC_0">{$value_XilinxZynq7020SoC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_XilinxZynq7020SoC_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XilinxZynq7020SoC"]
    let $value_XilinxZynq7020SoC_0 := fn:data($node_XilinxZynq7020SoC_0/@rdf:about)
    where fn:exists($node_XilinxZynq7020SoC_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxZynq7020SoC_0">{$value_XilinxZynq7020SoC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("XilinxZynq7020SoC_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_10,$GRAPH_13,("ARMProcessor_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_9,$GRAPH_14,("ARMProcessor_0"))
  let $GRAPH_17 :=  
    for $node_FixedBandwidthSensing_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AdjustableBandwidthSensing"]
    let $value_FixedBandwidthSensing_0 := fn:data($node_FixedBandwidthSensing_0/@rdf:about)
    where fn:exists($node_FixedBandwidthSensing_0)
    return
      <xqllib:result>
        <xqllib:var name="FixedBandwidthSensing_0">{$value_FixedBandwidthSensing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_FixedBandwidthSensing_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/RFDevice.owl#RadioBand_EHF"]/RFDevice:hasBandwidthRange
    let $value_FixedBandwidthSensing_0 := fn:data($node_FixedBandwidthSensing_0/@rdf:resource)
    where fn:exists($value_FixedBandwidthSensing_0)
    return
      <xqllib:result>
        <xqllib:var name="FixedBandwidthSensing_0">{$value_FixedBandwidthSensing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := ($GRAPH_17,$GRAPH_18)
  let $GRAPH_20 := ($GRAPH_15,$GRAPH_19)
  let $GRAPH_21 := xqllib:and($GRAPH_7,$GRAPH_20,("FixedBandwidthSensing_0","Situation_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_6,$GRAPH_21,("Situation_0"))
  let $GRAPH_23 := xqllib:optional($GRAPH_2,$GRAPH_22,("Var0"))
  let $GRAPH_24 := xqllib:and($GRAPH_1,$GRAPH_23,("Var0"))
  let $GRAPH_25 := xqllib:and($GRAPH_0,$GRAPH_24,("ContinuousWaveRadar_0"))
  return
    $GRAPH_25
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ContinuousWaveRadar_0"))),("ContinuousWaveRadar_0"))
