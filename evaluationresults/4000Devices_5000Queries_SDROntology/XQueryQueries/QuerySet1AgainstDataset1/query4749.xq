import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
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
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Var1 in $node_Var0/Nuvio:expresses
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Var0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Spartan6FPGA_instance18"]/Nuvio:partOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CrossEyeJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := ($GRAPH_5,$GRAPH_6)
  let $GRAPH_8 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InformationUnit"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Var0"))
  let $GRAPH_10 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var0) and fn:exists($node_Var1) and $node_Var1/Nuvio:informationSource/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_InboundRangeGatePullOffJamming_0 in $doc_ObjectDescription
    let $value_InboundRangeGatePullOffJamming_0 := fn:data($node_InboundRangeGatePullOffJamming_0/@rdf:about)
    for $node_Var1 in $node_InboundRangeGatePullOffJamming_0/Nuvio:subprocessOf
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_InboundRangeGatePullOffJamming_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="InboundRangeGatePullOffJamming_0">{$value_InboundRangeGatePullOffJamming_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_InboundRangeGatePullOffJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InboundRangeGatePullOffJamming"]
    let $value_InboundRangeGatePullOffJamming_0 := fn:data($node_InboundRangeGatePullOffJamming_0/@rdf:about)
    where fn:exists($node_InboundRangeGatePullOffJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="InboundRangeGatePullOffJamming_0">{$value_InboundRangeGatePullOffJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_InboundRangeGatePullOffJamming_0 in $node_Attribute_0/RFDevice:hasEffectiveRadiatedPower
    let $value_InboundRangeGatePullOffJamming_0 := fn:data($node_InboundRangeGatePullOffJamming_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_InboundRangeGatePullOffJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="InboundRangeGatePullOffJamming_0">{$value_InboundRangeGatePullOffJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("Attribute_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_12,$GRAPH_15,("InboundRangeGatePullOffJamming_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_11,$GRAPH_16,("InboundRangeGatePullOffJamming_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_10,$GRAPH_17,("Var1"))
  let $GRAPH_19 := xqllib:and($GRAPH_9,$GRAPH_18,("Var0"))
  let $GRAPH_20 := ($GRAPH_3,$GRAPH_19)
  let $GRAPH_21 := xqllib:and($GRAPH_1,$GRAPH_20,("Var0"))
  let $GRAPH_22 := xqllib:optional($GRAPH_0,$GRAPH_21,("Half_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_22
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Half_DuplexCommunicationsSystem_0"))),("Half_DuplexCommunicationsSystem_0"))
