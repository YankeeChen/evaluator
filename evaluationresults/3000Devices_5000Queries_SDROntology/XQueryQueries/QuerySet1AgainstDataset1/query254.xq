import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_Full_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Full-DuplexCommunicationsSystem"]
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Full_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Full_DuplexCommunicationsSystem_0 in $node_Object_0/RFDevice:hasProducer
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_Full_DuplexCommunicationsSystem_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_RangeGatePullOffJamming_0 in $node_Object_0/Nuvio:hasParticipant
    let $value_RangeGatePullOffJamming_0 := fn:data($node_RangeGatePullOffJamming_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_RangeGatePullOffJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="RangeGatePullOffJamming_0">{$value_RangeGatePullOffJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RangeGatePullOffJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RangeGatePullOffJamming"]
    let $value_RangeGatePullOffJamming_0 := fn:data($node_RangeGatePullOffJamming_0/@rdf:about)
    where fn:exists($node_RangeGatePullOffJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="RangeGatePullOffJamming_0">{$value_RangeGatePullOffJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_RangeGatePullOffJamming_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription3000.owl#Power_instance5"]/RFDevice:hasPulseWidth
    let $value_RangeGatePullOffJamming_0 := fn:data($node_RangeGatePullOffJamming_0/@rdf:resource)
    where fn:exists($value_RangeGatePullOffJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="RangeGatePullOffJamming_0">{$value_RangeGatePullOffJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("RangeGatePullOffJamming_0"))
  let $GRAPH_6 := xqllib:optional($GRAPH_2,$GRAPH_5,("RangeGatePullOffJamming_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Object_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("Full_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Full_DuplexCommunicationsSystem_0"))),("Full_DuplexCommunicationsSystem_0"))
