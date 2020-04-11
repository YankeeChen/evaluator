import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
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
    for $node_CR_0 in $node_Object_0/Nuvio:partOf
    let $value_CR_0 := fn:data($node_CR_0/@rdf:resource)
    where fn:exists($value_CR_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_Object_0 in $node_Situation_0/Nuvio:participatesIn
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_SpatialAreaUnit_0 in $doc_ObjectDescription
    let $value_SpatialAreaUnit_0 := fn:data($node_SpatialAreaUnit_0/@rdf:about)
    where fn:exists($node_Situation_0) and fn:exists($node_SpatialAreaUnit_0) and $node_SpatialAreaUnit_0/Nuvio:relevantIndividual/@rdf:resource = $value_Situation_0
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
        <xqllib:var name="SpatialAreaUnit_0">{$value_SpatialAreaUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Situation_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Object_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("CR_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CR_0"))),("CR_0"))
