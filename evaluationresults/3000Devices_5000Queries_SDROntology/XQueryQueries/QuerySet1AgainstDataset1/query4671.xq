import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SurveillanceRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SurveillanceRadar"]
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:about)
    where fn:exists($node_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SurveillanceRadar_0 in $node_Entity_0/RFDevice:hasSamplingRate
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_InformationRepresentation_0 in $doc_ObjectDescription
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    for $node_Entity_0 in $node_InformationRepresentation_0/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DoubleValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
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
  let $GRAPH_7 := $GRAPH_6[(data(xqllib:var[@name="DataValue0"]) <= 353161612)]
  let $GRAPH_8 := xqllib:and($GRAPH_5,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 :=  
    for $node_DataTransmissionMode_0 in $doc_ObjectDescription
    let $value_DataTransmissionMode_0 := fn:data($node_DataTransmissionMode_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_DataTransmissionMode_0) and fn:exists($node_Entity_0) and $node_DataTransmissionMode_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="DataTransmissionMode_0">{$value_DataTransmissionMode_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_CompositeSolid_0 in $doc_ObjectDescription
    let $value_CompositeSolid_0 := fn:data($node_CompositeSolid_0/@rdf:about)
    for $node_Entity_0 in $node_CompositeSolid_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_CompositeSolid_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeSolid_0">{$value_CompositeSolid_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_CompositeSolid_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#CompositeSolid"]
    let $value_CompositeSolid_0 := fn:data($node_CompositeSolid_0/@rdf:about)
    where fn:exists($node_CompositeSolid_0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeSolid_0">{$value_CompositeSolid_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("CompositeSolid_0"))
  let $GRAPH_13 := xqllib:optional($GRAPH_9,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 :=  
    for $node_DataTransmissionMode_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DataTransmissionMode"]
    let $value_DataTransmissionMode_0 := fn:data($node_DataTransmissionMode_0/@rdf:about)
    where fn:exists($node_DataTransmissionMode_0)
    return
      <xqllib:result>
        <xqllib:var name="DataTransmissionMode_0">{$value_DataTransmissionMode_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("DataTransmissionMode_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_8,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/Nuvio:informationSource
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_PulseRadarModulation_0 in $doc_ObjectDescription
    let $value_PulseRadarModulation_0 := fn:data($node_PulseRadarModulation_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_PulseRadarModulation_0) and fn:exists($node_Var0) and $node_PulseRadarModulation_0/Nuvio:subprocessOf/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="PulseRadarModulation_0">{$value_PulseRadarModulation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 :=  
    for $node_PulseRadarModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseRadarModulation"]
    let $value_PulseRadarModulation_0 := fn:data($node_PulseRadarModulation_0/@rdf:about)
    where fn:exists($node_PulseRadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadarModulation_0">{$value_PulseRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := xqllib:and($GRAPH_18,$GRAPH_19,("PulseRadarModulation_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_17,$GRAPH_20,("Var0"))
  let $GRAPH_22 := xqllib:and($GRAPH_16,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := ($GRAPH_4,$GRAPH_22)
  let $GRAPH_24 := xqllib:optional($GRAPH_2,$GRAPH_23,("Entity_0"))
  let $GRAPH_25 :=  
    for $node_InformationRepresentation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationRepresentation"]
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    where fn:exists($node_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_26 := xqllib:and($GRAPH_24,$GRAPH_25,("InformationRepresentation_0"))
  let $GRAPH_27 := xqllib:and($GRAPH_1,$GRAPH_26,("Entity_0"))
  let $GRAPH_28 := xqllib:and($GRAPH_0,$GRAPH_27,("SurveillanceRadar_0"))
  return
    $GRAPH_28
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SurveillanceRadar_0"))),("SurveillanceRadar_0"))
