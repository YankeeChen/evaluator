import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
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
    for $node_BistaticRadar_0 in $doc_ObjectDescription
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:about)
    for $node_Var0 in $node_BistaticRadar_0/RFDevice:supportsJamming
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_BistaticRadar_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Quantity_0) and fn:exists($node_Var0) and $node_Quantity_0/RFDevice:hasCapacity/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Quantity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quantity"]
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    where fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Quantity_0"))
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleModulation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Var0"))
  let $GRAPH_8 :=  
    for $node_Full_DuplexCommunicationsSystem_0 in $doc_ObjectDescription
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Full_DuplexCommunicationsSystem_0) and fn:exists($node_Var0) and $node_Full_DuplexCommunicationsSystem_0/Nuvio:relevantIndividual/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Full_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Full-DuplexCommunicationsSystem"]
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Full_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Full_DuplexCommunicationsSystem_0 in $doc_ObjectDescription
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:about)
    for $node_Transmitting_0 in $node_Full_DuplexCommunicationsSystem_0/RFDevice:hasCapability
    let $value_Transmitting_0 := fn:data($node_Transmitting_0/@rdf:resource)
    where fn:exists($node_Full_DuplexCommunicationsSystem_0) and fn:exists($value_Transmitting_0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Transmitting_0">{$value_Transmitting_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Transmitting_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transmitting"]
    let $value_Transmitting_0 := fn:data($node_Transmitting_0/@rdf:about)
    where fn:exists($node_Transmitting_0)
    return
      <xqllib:result>
        <xqllib:var name="Transmitting_0">{$value_Transmitting_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Quantity_1 in $doc_ObjectDescription
    let $value_Quantity_1 := fn:data($node_Quantity_1/@rdf:about)
    for $node_Transmitting_0 in $node_Quantity_1/RFDevice:hasEffectiveRadiatedPower
    let $value_Transmitting_0 := fn:data($node_Transmitting_0/@rdf:resource)
    where fn:exists($node_Quantity_1) and fn:exists($value_Transmitting_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_1">{$value_Quantity_1}</xqllib:var>
        <xqllib:var name="Transmitting_0">{$value_Transmitting_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("Transmitting_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_10,$GRAPH_13,("Transmitting_0"))
  let $GRAPH_15 := xqllib:optional($GRAPH_9,$GRAPH_14,("Full_DuplexCommunicationsSystem_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_8,$GRAPH_15,("Full_DuplexCommunicationsSystem_0"))
  let $GRAPH_17 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PositiveIntegerValue"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue0 in $node_Var0/RFDevice:hasDoubleValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := $GRAPH_18[(data(xqllib:var[@name="DataValue0"]) = -56.92)]
  let $GRAPH_20 := xqllib:and($GRAPH_17,$GRAPH_19,("Var0"))
  let $GRAPH_21 :=  
    for $node_Distance_0 in $doc_ObjectDescription
    let $value_Distance_0 := fn:data($node_Distance_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Distance_0) and fn:exists($node_Var0) and $node_Distance_0/RFDevice:hasEffectiveRadiatedPower/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Distance_0">{$value_Distance_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 :=  
    for $node_Distance_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Distance"]
    let $value_Distance_0 := fn:data($node_Distance_0/@rdf:about)
    where fn:exists($node_Distance_0)
    return
      <xqllib:result>
        <xqllib:var name="Distance_0">{$value_Distance_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 := xqllib:and($GRAPH_21,$GRAPH_22,("Distance_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_20,$GRAPH_23,("Var0"))
  let $GRAPH_25 := xqllib:and($GRAPH_16,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_7,$GRAPH_25,("Var0"))
  let $GRAPH_27 := xqllib:and($GRAPH_2,$GRAPH_26,("Var0"))
  let $GRAPH_28 := xqllib:and($GRAPH_1,$GRAPH_27,("Var0"))
  let $GRAPH_29 := xqllib:and($GRAPH_0,$GRAPH_28,("BistaticRadar_0"))
  return
    $GRAPH_29
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("BistaticRadar_0"))),("BistaticRadar_0"))
