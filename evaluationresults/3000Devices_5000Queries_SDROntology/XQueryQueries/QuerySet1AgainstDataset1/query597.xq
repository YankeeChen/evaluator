import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_CommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CommunicationsSystem"]
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:about)
    where fn:exists($node_CommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_IEDJammer_0 in $doc_ObjectDescription
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    for $node_CommunicationsSystem_0 in $node_IEDJammer_0/Nuvio:aggregateOf
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_CommunicationsSystem_0) and fn:exists($node_IEDJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_ChokeRingAntenna_0 in $doc_ObjectDescription
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:about)
    for $node_IEDJammer_0 in $node_ChokeRingAntenna_0/Nuvio:compositeOf
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:resource)
    where fn:exists($node_ChokeRingAntenna_0) and fn:exists($value_IEDJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_ChokeRingAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ChokeRingAntenna"]
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:about)
    where fn:exists($node_ChokeRingAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_ChokeRingAntenna_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:resource)
    where fn:exists($value_ChokeRingAntenna_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AdjustableBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_RadioFrequencyBand_0 in $node_Var0/RFDevice:hasBandwidthRange
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:resource)
    where fn:exists($value_RadioFrequencyBand_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioFrequencyBand"]
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("RadioFrequencyBand_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("Var0"))
  let $GRAPH_11 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_Var0 in $node_Quantity_0/RFDevice:hasMaxSensedPower
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Quantity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:optional($GRAPH_10,$GRAPH_11,("Var0"))
  let $GRAPH_13 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiving"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := ($GRAPH_12,$GRAPH_13)
  let $GRAPH_15 := xqllib:and($GRAPH_4,$GRAPH_14,("Var0"))
  let $GRAPH_16 := xqllib:and($GRAPH_3,$GRAPH_15,("ChokeRingAntenna_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_2,$GRAPH_16,("ChokeRingAntenna_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("IEDJammer_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_0,$GRAPH_18,("CommunicationsSystem_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CommunicationsSystem_0"))),("CommunicationsSystem_0"))
