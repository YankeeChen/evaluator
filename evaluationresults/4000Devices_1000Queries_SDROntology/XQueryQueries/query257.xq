import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseDopplerRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseDopplerRadar"]
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:about)
    where fn:exists($node_PulseDopplerRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Weight_0 in $doc_ObjectDescription
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:about)
    for $node_PulseDopplerRadar_0 in $node_Weight_0/RFDevice:hasNoiseFigure
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:resource)
    where fn:exists($value_PulseDopplerRadar_0) and fn:exists($node_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Weight_0 in $node_Var0/Nuvio:hasValue
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:resource)
    where fn:exists($node_Var0) and fn:exists($value_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Process_0 in $node_Var0/Nuvio:expresses
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($value_Process_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AutomaticGainControl"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Var0 in $node_Attribute_0/Nuvio:hasProcessQuantity
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Attribute_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("Var0"))
  let $GRAPH_9 :=  
    for $node_NonNegativeIntegerValue_0 in $doc_ObjectDescription
    let $value_NonNegativeIntegerValue_0 := fn:data($node_NonNegativeIntegerValue_0/@rdf:about)
    for $node_Var0 in $node_NonNegativeIntegerValue_0/Nuvio:relevantIndividual
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_NonNegativeIntegerValue_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="NonNegativeIntegerValue_0">{$value_NonNegativeIntegerValue_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Voltage_0 in $doc_ObjectDescription
    let $value_Voltage_0 := fn:data($node_Voltage_0/@rdf:about)
    for $node_Var0 in $node_Voltage_0/Nuvio:relevantIndividual
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Voltage_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Voltage_0">{$value_Voltage_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Voltage_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Voltage"]
    let $value_Voltage_0 := fn:data($node_Voltage_0/@rdf:about)
    where fn:exists($node_Voltage_0)
    return
      <xqllib:result>
        <xqllib:var name="Voltage_0">{$value_Voltage_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("Voltage_0"))
  let $GRAPH_13 := xqllib:optional($GRAPH_9,$GRAPH_12,("Var0"))
  let $GRAPH_14 :=  
    for $node_NonNegativeIntegerValue_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NonNegativeIntegerValue"]
    let $value_NonNegativeIntegerValue_0 := fn:data($node_NonNegativeIntegerValue_0/@rdf:about)
    where fn:exists($node_NonNegativeIntegerValue_0)
    return
      <xqllib:result>
        <xqllib:var name="NonNegativeIntegerValue_0">{$value_NonNegativeIntegerValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_NonNegativeIntegerValue_0 in $doc_ObjectDescription
    let $value_NonNegativeIntegerValue_0 := fn:data($node_NonNegativeIntegerValue_0/@rdf:about)
    for $node_DataValue0 in $node_NonNegativeIntegerValue_0/RFDevice:hasFloatValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_NonNegativeIntegerValue_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="NonNegativeIntegerValue_0">{$value_NonNegativeIntegerValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := $GRAPH_15[(data(xqllib:var[@name="DataValue0"]) >= -50.2)]
  let $GRAPH_17 := xqllib:and($GRAPH_14,$GRAPH_16,("NonNegativeIntegerValue_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_13,$GRAPH_17,("NonNegativeIntegerValue_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_8,$GRAPH_18,("Var0"))
  let $GRAPH_20 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue1 in $node_Var0/RFDevice:hasDoubleValue
    let $value_DataValue1 := fn:data($node_DataValue1)
    where fn:exists($value_DataValue1) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue1">{$value_DataValue1}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Var0 in $node_InformationEntity_0/Nuvio:hasSubprocess
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_InformationEntity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 := xqllib:and($GRAPH_20,$GRAPH_21,("Var0"))
  let $GRAPH_23 := xqllib:optional($GRAPH_19,$GRAPH_22,("Var0"))
  let $GRAPH_24 := xqllib:optional($GRAPH_3,$GRAPH_23,("Var0"))
  let $GRAPH_25 := xqllib:and($GRAPH_2,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_1,$GRAPH_25,("Weight_0"))
  let $GRAPH_27 := xqllib:and($GRAPH_0,$GRAPH_26,("PulseDopplerRadar_0"))
  return
    $GRAPH_27
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseDopplerRadar_0"))),("PulseDopplerRadar_0"))
