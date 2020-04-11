import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
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
    for $node_CommunicationsSystem_0 in $doc_ObjectDescription
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:about)
    for $node_Process_0 in $node_CommunicationsSystem_0/RFDevice:supportsTransmitting
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($node_CommunicationsSystem_0) and fn:exists($value_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_ElectricCharge_0 in $doc_ObjectDescription
    let $value_ElectricCharge_0 := fn:data($node_ElectricCharge_0/@rdf:about)
    for $node_Process_0 in $node_ElectricCharge_0/RFDevice:hasMaxSensedPower
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($node_ElectricCharge_0) and fn:exists($value_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectricCharge_0">{$value_ElectricCharge_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_ElectricCharge_0 in $node_Var0/Nuvio:hasValue
    let $value_ElectricCharge_0 := fn:data($node_ElectricCharge_0/@rdf:resource)
    where fn:exists($value_ElectricCharge_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="ElectricCharge_0">{$value_ElectricCharge_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpatialLinearUnit"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Voltage"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationContent"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_InformationRepresentation_0 in $node_Var0/Nuvio:represents
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:resource)
    where fn:exists($value_InformationRepresentation_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_InformationRepresentation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationRepresentation"]
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    where fn:exists($node_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("InformationRepresentation_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_5,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:optional($GRAPH_4,$GRAPH_11,("Var0"))
  let $GRAPH_13 := xqllib:and($GRAPH_3,$GRAPH_12,("Var0"))
  let $GRAPH_14 := xqllib:and($GRAPH_2,$GRAPH_13,("ElectricCharge_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_1,$GRAPH_14,("Process_0"))
  let $GRAPH_16 := xqllib:optional($GRAPH_0,$GRAPH_15,("CommunicationsSystem_0"))
  return
    $GRAPH_16
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CommunicationsSystem_0"))),("CommunicationsSystem_0"))
