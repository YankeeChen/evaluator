import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_BistaticRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BistaticRadar"]
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:about)
    where fn:exists($node_BistaticRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_BistaticRadar_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:resource)
    where fn:exists($value_BistaticRadar_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FixedBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SelfProtectionJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Var0 in $node_Attribute_0/RFDevice:hasPulseWidth
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Attribute_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Var0"))
  let $GRAPH_8 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiving"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NoiseJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/RFDevice:hasTransmitPowerRange
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Gain"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_IntegerValue_0 in $doc_ObjectDescription
    let $value_IntegerValue_0 := fn:data($node_IntegerValue_0/@rdf:about)
    for $node_Entity_0 in $node_IntegerValue_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_IntegerValue_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="IntegerValue_0">{$value_IntegerValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_XC7K410TFPGA_0 in $doc_ObjectDescription
    let $value_XC7K410TFPGA_0 := fn:data($node_XC7K410TFPGA_0/@rdf:about)
    for $node_Entity_0 in $node_XC7K410TFPGA_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_XC7K410TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="XC7K410TFPGA_0">{$value_XC7K410TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_XC7K410TFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC7K410TFPGA"]
    let $value_XC7K410TFPGA_0 := fn:data($node_XC7K410TFPGA_0/@rdf:about)
    where fn:exists($node_XC7K410TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC7K410TFPGA_0">{$value_XC7K410TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := xqllib:and($GRAPH_14,$GRAPH_15,("XC7K410TFPGA_0"))
  let $GRAPH_17 :=  
    for $node_IntegerValue_0 in $doc_ObjectDescription
    let $value_IntegerValue_0 := fn:data($node_IntegerValue_0/@rdf:about)
    for $node_DataValue0 in $node_IntegerValue_0/RFDevice:hasPositiveIntegerValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_IntegerValue_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="IntegerValue_0">{$value_IntegerValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := $GRAPH_17[(data(xqllib:var[@name="DataValue0"]) >= -20.97)]
  let $GRAPH_19 := xqllib:and($GRAPH_16,$GRAPH_18,())
  let $GRAPH_20 := xqllib:and($GRAPH_13,$GRAPH_19,("Entity_0","IntegerValue_0"))
  let $GRAPH_21 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_QuadratureAmplitudeModulation_0 in $doc_ObjectDescription
    let $value_QuadratureAmplitudeModulation_0 := fn:data($node_QuadratureAmplitudeModulation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_QuadratureAmplitudeModulation_0) and $node_QuadratureAmplitudeModulation_0/Nuvio:subprocessOf/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="QuadratureAmplitudeModulation_0">{$value_QuadratureAmplitudeModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 :=  
    for $node_QuadratureAmplitudeModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#QuadratureAmplitudeModulation"]
    let $value_QuadratureAmplitudeModulation_0 := fn:data($node_QuadratureAmplitudeModulation_0/@rdf:about)
    where fn:exists($node_QuadratureAmplitudeModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="QuadratureAmplitudeModulation_0">{$value_QuadratureAmplitudeModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 := xqllib:optional($GRAPH_21,$GRAPH_22,("QuadratureAmplitudeModulation_0"))
  let $GRAPH_24 := ($GRAPH_20,$GRAPH_23)
  let $GRAPH_25 := xqllib:and($GRAPH_11,$GRAPH_24,("Entity_0"))
  let $GRAPH_26 := xqllib:and($GRAPH_10,$GRAPH_25,("Entity_0"))
  let $GRAPH_27 := xqllib:and($GRAPH_9,$GRAPH_26,("Var0"))
  let $GRAPH_28 := xqllib:and($GRAPH_8,$GRAPH_27,("Var0"))
  let $GRAPH_29 := xqllib:and($GRAPH_7,$GRAPH_28,("Var0"))
  let $GRAPH_30 := xqllib:and($GRAPH_2,$GRAPH_29,("Var0"))
  let $GRAPH_31 := xqllib:and($GRAPH_1,$GRAPH_30,("Var0"))
  let $GRAPH_32 := xqllib:optional($GRAPH_0,$GRAPH_31,("BistaticRadar_0"))
  return
    $GRAPH_32
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("BistaticRadar_0"))),("BistaticRadar_0"))
