import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ElectronicSupportSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicSupportSystem"]
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:about)
    where fn:exists($node_ElectronicSupportSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_EmitterLocationDetection_0 in $doc_ObjectDescription
    let $value_EmitterLocationDetection_0 := fn:data($node_EmitterLocationDetection_0/@rdf:about)
    for $node_ElectronicSupportSystem_0 in $node_EmitterLocationDetection_0/RFDevice:hasCapability
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicSupportSystem_0) and fn:exists($node_EmitterLocationDetection_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
        <xqllib:var name="EmitterLocationDetection_0">{$value_EmitterLocationDetection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_EmitterLocationDetection_0 in $node_Var0/Nuvio:hasParticipant
    let $value_EmitterLocationDetection_0 := fn:data($node_EmitterLocationDetection_0/@rdf:resource)
    where fn:exists($value_EmitterLocationDetection_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="EmitterLocationDetection_0">{$value_EmitterLocationDetection_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DeceptiveJamming_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:resource)
    where fn:exists($value_DeceptiveJamming_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_DeceptiveJamming_0 in $node_Attribute_0/RFDevice:hasMaxOutputPower
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_DeceptiveJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
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
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("DeceptiveJamming_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Var0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("EmitterLocationDetection_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("ElectronicSupportSystem_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicSupportSystem_0"))),("ElectronicSupportSystem_0"))
