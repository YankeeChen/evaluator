import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace skos = "http://www.w3.org/2004/02/skos/core#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RadarSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarSystem"]
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    where fn:exists($node_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_RadarSystem_0 in $node_Entity_0/RFDevice:hasCapacity
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Collection_0 in $doc_ObjectDescription
    let $value_Collection_0 := fn:data($node_Collection_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.w3.org/2004/02/skos/core#ConceptScheme"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Collection_0) and fn:exists($node_Entity_0) and $node_Collection_0/skos:hasTopConcept/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Collection_0">{$value_Collection_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Collection_0 in $doc_ObjectDescription
    let $value_Collection_0 := fn:data($node_Collection_0/@rdf:about)
    for $node_Var0 in $node_Collection_0/skos:member
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Collection_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Collection_0">{$value_Collection_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Collection_0"))
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#OnOffKeyingModulation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Entity_0 in $node_Var1/Nuvio:hasValue
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    for $node_Var1 in $node_Entity_1/Nuvio:hasUnitOfMeasure
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Entity_1) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Var1"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_5,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_0,$GRAPH_13,("RadarSystem_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
