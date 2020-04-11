import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_CR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#CR"]
    let $value_CR_0 := fn:data($node_CR_0/@rdf:about)
    where fn:exists($node_CR_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_CR_0 in $node_Object_0/RFDevice:hasProducer
    let $value_CR_0 := fn:data($node_CR_0/@rdf:resource)
    where fn:exists($value_CR_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_CommunicationsJamming_0 in $doc_ObjectDescription
    let $value_CommunicationsJamming_0 := fn:data($node_CommunicationsJamming_0/@rdf:about)
    for $node_Object_0 in $node_CommunicationsJamming_0/Nuvio:participatesIn
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_CommunicationsJamming_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsJamming_0">{$value_CommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_CommunicationsJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CommunicationsJamming"]
    let $value_CommunicationsJamming_0 := fn:data($node_CommunicationsJamming_0/@rdf:about)
    where fn:exists($node_CommunicationsJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsJamming_0">{$value_CommunicationsJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_CommunicationsJamming_0 in $node_Entity_0/RFDevice:hasEffectiveRadiatedPower
    let $value_CommunicationsJamming_0 := fn:data($node_CommunicationsJamming_0/@rdf:resource)
    where fn:exists($value_CommunicationsJamming_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsJamming_0">{$value_CommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#LatitudeValueInDegree_instance0"]/Nuvio:hasValue
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Entity_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("CommunicationsJamming_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("CommunicationsJamming_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Object_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("CR_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CR_0"))),("CR_0"))
