import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_MonostaticRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#MonostaticRadar"]
    let $value_MonostaticRadar_0 := fn:data($node_MonostaticRadar_0/@rdf:about)
    where fn:exists($node_MonostaticRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="MonostaticRadar_0">{$value_MonostaticRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_MonostaticRadar_0 in $node_Object_0/RFDevice:isProducerOf
    let $value_MonostaticRadar_0 := fn:data($node_MonostaticRadar_0/@rdf:resource)
    where fn:exists($value_MonostaticRadar_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="MonostaticRadar_0">{$value_MonostaticRadar_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_CoverJamming_0 in $node_Object_0/Nuvio:participatesIn
    let $value_CoverJamming_0 := fn:data($node_CoverJamming_0/@rdf:resource)
    where fn:exists($value_CoverJamming_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="CoverJamming_0">{$value_CoverJamming_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_CoverJamming_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription2000.owl#Instance1172"]/Nuvio:hasProcessQuantity
    let $value_CoverJamming_0 := fn:data($node_CoverJamming_0/@rdf:resource)
    where fn:exists($value_CoverJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="CoverJamming_0">{$value_CoverJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("CoverJamming_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Object_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("MonostaticRadar_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("MonostaticRadar_0"))),("MonostaticRadar_0"))
