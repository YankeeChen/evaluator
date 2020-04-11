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
    for $node_Half_DuplexCommunicationsSystem_0 in $doc_ObjectDescription
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:about)
    for $node_Object_0 in $node_Half_DuplexCommunicationsSystem_0/RFDevice:isProducerOf
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_Half_DuplexCommunicationsSystem_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Object_0 in $node_Entity_0/RFDevice:hasPolarization
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#OnOffKeyingModulation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_CommunicationsJamming_0 in $doc_ObjectDescription
    let $value_CommunicationsJamming_0 := fn:data($node_CommunicationsJamming_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_CommunicationsJamming_0) and fn:exists($node_Entity_0) and $node_CommunicationsJamming_0/Nuvio:hasSubprocess/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsJamming_0">{$value_CommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_CommunicationsJamming_0 in $node_Entity_0/RFDevice:hasPulseWidth
    let $value_CommunicationsJamming_0 := fn:data($node_CommunicationsJamming_0/@rdf:resource)
    where fn:exists($value_CommunicationsJamming_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsJamming_0">{$value_CommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("CommunicationsJamming_0","Entity_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_4,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_2,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Object_0"))
  let $GRAPH_12 := xqllib:optional($GRAPH_0,$GRAPH_11,("Half_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Half_DuplexCommunicationsSystem_0"))),("Half_DuplexCommunicationsSystem_0"))
