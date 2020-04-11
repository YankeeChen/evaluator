import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
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
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Half_DuplexCommunicationsSystem_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_Half_DuplexCommunicationsSystem_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CoverJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Object_0 in $node_Var0/Nuvio:isExpressedBy
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectricCharge"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_VelocityUnit_0 in $doc_ObjectDescription
    let $value_VelocityUnit_0 := fn:data($node_VelocityUnit_0/@rdf:about)
    where fn:exists($node_Var0) and fn:exists($node_VelocityUnit_0) and $node_VelocityUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="VelocityUnit_0">{$value_VelocityUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_VelocityUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#VelocityUnit"]
    let $value_VelocityUnit_0 := fn:data($node_VelocityUnit_0/@rdf:about)
    where fn:exists($node_VelocityUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="VelocityUnit_0">{$value_VelocityUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("VelocityUnit_0"))
  let $GRAPH_10 := ($GRAPH_6,$GRAPH_9)
  let $GRAPH_11 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_NoiseJamming_0 in $node_Object_0/Nuvio:participatesIn
    let $value_NoiseJamming_0 := fn:data($node_NoiseJamming_0/@rdf:resource)
    where fn:exists($value_NoiseJamming_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseJamming_0">{$value_NoiseJamming_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_NoiseJamming_0 in $node_Power_0/RFDevice:hasPulseRepetitionFrequency
    let $value_NoiseJamming_0 := fn:data($node_NoiseJamming_0/@rdf:resource)
    where fn:exists($value_NoiseJamming_0) and fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseJamming_0">{$value_NoiseJamming_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("NoiseJamming_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_10,$GRAPH_13,())
  let $GRAPH_15 := xqllib:optional($GRAPH_4,$GRAPH_14,("Object_0","Var0"))
  let $GRAPH_16 := ($GRAPH_3,$GRAPH_15)
  let $GRAPH_17 := xqllib:and($GRAPH_1,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_0,$GRAPH_17,("Half_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_18
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Half_DuplexCommunicationsSystem_0"))),("Half_DuplexCommunicationsSystem_0"))
