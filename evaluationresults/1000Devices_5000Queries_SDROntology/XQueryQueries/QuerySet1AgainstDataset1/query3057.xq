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
    for $node_USRPB200_210_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200-210"]
    let $value_USRPB200_210_0 := fn:data($node_USRPB200_210_0/@rdf:about)
    where fn:exists($node_USRPB200_210_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_210_0">{$value_USRPB200_210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPB200_210_0 in $doc_ObjectDescription
    let $value_USRPB200_210_0 := fn:data($node_USRPB200_210_0/@rdf:about)
    for $node_Var0 in $node_USRPB200_210_0/RFDevice:supportsSpectrumSensing
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_USRPB200_210_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_210_0">{$value_USRPB200_210_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_CoverPulsesJamming_0 in $doc_ObjectDescription
    let $value_CoverPulsesJamming_0 := fn:data($node_CoverPulsesJamming_0/@rdf:about)
    for $node_Var0 in $node_CoverPulsesJamming_0/Nuvio:subprocessOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_CoverPulsesJamming_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="CoverPulsesJamming_0">{$value_CoverPulsesJamming_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_CoverPulsesJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CoverPulsesJamming"]
    let $value_CoverPulsesJamming_0 := fn:data($node_CoverPulsesJamming_0/@rdf:about)
    where fn:exists($node_CoverPulsesJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="CoverPulsesJamming_0">{$value_CoverPulsesJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_CoverPulsesJamming_0 in $node_Entity_0/RFDevice:hasTransmitPowerRange
    let $value_CoverPulsesJamming_0 := fn:data($node_CoverPulsesJamming_0/@rdf:resource)
    where fn:exists($value_CoverPulsesJamming_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CoverPulsesJamming_0">{$value_CoverPulsesJamming_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationEntity_0 in $node_Entity_0/Nuvio:isExpressedBy
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Full-DuplexCommunicationsSystem"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Transmitting_0 in $doc_ObjectDescription
    let $value_Transmitting_0 := fn:data($node_Transmitting_0/@rdf:about)
    for $node_Entity_0 in $node_Transmitting_0/RFDevice:supportsTuning
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Transmitting_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Transmitting_0">{$value_Transmitting_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:optional($GRAPH_6,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_NoiseJamming_0 in $doc_ObjectDescription
    let $value_NoiseJamming_0 := fn:data($node_NoiseJamming_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_NoiseJamming_0) and $node_NoiseJamming_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="NoiseJamming_0">{$value_NoiseJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_ArcByBulge_0 in $doc_ObjectDescription
    let $value_ArcByBulge_0 := fn:data($node_ArcByBulge_0/@rdf:about)
    for $node_Entity_0 in $node_ArcByBulge_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_ArcByBulge_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ArcByBulge_0">{$value_ArcByBulge_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_ArcByBulge_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#ArcByBulge"]
    let $value_ArcByBulge_0 := fn:data($node_ArcByBulge_0/@rdf:about)
    where fn:exists($node_ArcByBulge_0)
    return
      <xqllib:result>
        <xqllib:var name="ArcByBulge_0">{$value_ArcByBulge_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("ArcByBulge_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_9,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 :=  
    for $node_NoiseJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NoiseJamming"]
    let $value_NoiseJamming_0 := fn:data($node_NoiseJamming_0/@rdf:about)
    where fn:exists($node_NoiseJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseJamming_0">{$value_NoiseJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_NoiseJamming_0 in $node_Quantity_0/RFDevice:hasTransmitPowerRange
    let $value_NoiseJamming_0 := fn:data($node_NoiseJamming_0/@rdf:resource)
    where fn:exists($value_NoiseJamming_0) and fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseJamming_0">{$value_NoiseJamming_0}</xqllib:var>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := xqllib:and($GRAPH_14,$GRAPH_15,("NoiseJamming_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_13,$GRAPH_16,("NoiseJamming_0"))
  let $GRAPH_18 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationRepresentation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_InformationEntity_0) and $node_InformationEntity_0/Nuvio:represents/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:and($GRAPH_17,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_8,$GRAPH_19,("Entity_0"))
  let $GRAPH_21 := xqllib:optional($GRAPH_5,$GRAPH_20,("Entity_0","InformationEntity_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_4,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_3,$GRAPH_22,("CoverPulsesJamming_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_2,$GRAPH_23,("CoverPulsesJamming_0"))
  let $GRAPH_25 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Var0 in $node_Attribute_0/RFDevice:hasPulseRepetitionInterval
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_26 := xqllib:and($GRAPH_24,$GRAPH_25,("Var0"))
  let $GRAPH_27 := xqllib:and($GRAPH_1,$GRAPH_26,("Var0"))
  let $GRAPH_28 := xqllib:and($GRAPH_0,$GRAPH_27,("USRPB200_210_0"))
  return
    $GRAPH_28
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200_210_0"))),("USRPB200_210_0"))
