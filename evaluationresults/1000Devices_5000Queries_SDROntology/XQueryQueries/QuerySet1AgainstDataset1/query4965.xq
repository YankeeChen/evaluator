import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPX310_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPX310"]
    let $value_USRPX310_0 := fn:data($node_USRPX310_0/@rdf:about)
    where fn:exists($node_USRPX310_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX310_0">{$value_USRPX310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPX310_0 in $node_Var0/RFDevice:hasCapability
    let $value_USRPX310_0 := fn:data($node_USRPX310_0/@rdf:resource)
    where fn:exists($value_USRPX310_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX310_0">{$value_USRPX310_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/RFDevice:hasBandwidth
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_Entity_0 in $node_Process_0/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_ADC_0 in $doc_ObjectDescription
    let $value_ADC_0 := fn:data($node_ADC_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_ADC_0) and fn:exists($node_Entity_0) and $node_ADC_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="ADC_0">{$value_ADC_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_ElectronicSupportSystem_0 in $doc_ObjectDescription
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:about)
    for $node_Entity_0 in $node_ElectronicSupportSystem_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_ElectronicSupportSystem_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := ($GRAPH_5,$GRAPH_6)
  let $GRAPH_8 :=  
    for $node_ADC_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ADC"]
    let $value_ADC_0 := fn:data($node_ADC_0/@rdf:about)
    where fn:exists($node_ADC_0)
    return
      <xqllib:result>
        <xqllib:var name="ADC_0">{$value_ADC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_ADC_0 in $node_Attribute_0/RFDevice:hasResolution
    let $value_ADC_0 := fn:data($node_ADC_0/@rdf:resource)
    where fn:exists($value_ADC_0) and fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="ADC_0">{$value_ADC_0}</xqllib:var>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Attribute_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_8,$GRAPH_11,("ADC_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_7,$GRAPH_12,("ADC_0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_3,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 :=  
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    for $node_Process_0 in $node_Entity_1/Nuvio:hasProcessQuality
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($node_Entity_1) and fn:exists($value_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := xqllib:and($GRAPH_14,$GRAPH_15,("Process_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_2,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpectrumSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Frequency_instance58"]/RFDevice:hasBandwidth
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := xqllib:and($GRAPH_18,$GRAPH_19,("Var0"))
  let $GRAPH_21 := xqllib:and($GRAPH_17,$GRAPH_20,("Var0"))
  let $GRAPH_22 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InboundRangeGatePullOffJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_25 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#RadarFrequencyBand_instance22"]/RFDevice:hasFrequencyAccuracy
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_26 := ($GRAPH_24,$GRAPH_25)
  let $GRAPH_27 := xqllib:and($GRAPH_22,$GRAPH_26,("Var0"))
  let $GRAPH_28 := xqllib:and($GRAPH_21,$GRAPH_27,("Var0"))
  let $GRAPH_29 := xqllib:and($GRAPH_1,$GRAPH_28,("Var0"))
  let $GRAPH_30 := xqllib:optional($GRAPH_0,$GRAPH_29,("USRPX310_0"))
  return
    $GRAPH_30
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX310_0"))),("USRPX310_0"))
