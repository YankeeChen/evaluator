import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
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
    for $node_CR_0 in $doc_ObjectDescription
    let $value_CR_0 := fn:data($node_CR_0/@rdf:about)
    for $node_Object_0 in $node_CR_0/RFDevice:isProducerOf
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_CR_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Length_0 in $doc_ObjectDescription
    let $value_Length_0 := fn:data($node_Length_0/@rdf:about)
    for $node_Object_0 in $node_Length_0/RFDevice:hasVoltage
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_Length_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Length_0">{$value_Length_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Length_0 in $doc_ObjectDescription
    let $value_Length_0 := fn:data($node_Length_0/@rdf:about)
    for $node_Var0 in $node_Length_0/Nuvio:hasValue
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Length_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Length_0">{$value_Length_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := ($GRAPH_3,$GRAPH_4)
  let $GRAPH_6 := xqllib:and($GRAPH_1,$GRAPH_5,("Object_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_0,$GRAPH_6,("CR_0"))
  return
    $GRAPH_7
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CR_0"))),("CR_0"))
