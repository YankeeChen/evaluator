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
    for $node_Receiver_0 in $doc_ObjectDescription
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:about)
    for $node_Half_DuplexCommunicationsSystem_0 in $node_Receiver_0/Nuvio:partOf
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_Half_DuplexCommunicationsSystem_0) and fn:exists($node_Receiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_IEDJammer_0 in $doc_ObjectDescription
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    for $node_Receiver_0 in $node_IEDJammer_0/Nuvio:aggregateOf
    let $value_Receiver_0 := fn:data($node_Receiver_0/@rdf:resource)
    where fn:exists($node_IEDJammer_0) and fn:exists($value_Receiver_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="Receiver_0">{$value_Receiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_DRFMJamming_0 in $doc_ObjectDescription
    let $value_DRFMJamming_0 := fn:data($node_DRFMJamming_0/@rdf:about)
    for $node_IEDJammer_0 in $node_DRFMJamming_0/RFDevice:hasCapability
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:resource)
    where fn:exists($node_DRFMJamming_0) and fn:exists($value_IEDJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="DRFMJamming_0">{$value_DRFMJamming_0}</xqllib:var>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_DRFMJamming_0 in $node_Attribute_0/RFDevice:hasPulseWidth
    let $value_DRFMJamming_0 := fn:data($node_DRFMJamming_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_DRFMJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="DRFMJamming_0">{$value_DRFMJamming_0}</xqllib:var>
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
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("DRFMJamming_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("IEDJammer_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Receiver_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("Half_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Half_DuplexCommunicationsSystem_0"))),("Half_DuplexCommunicationsSystem_0"))
