import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SearchRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SearchRadar"]
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    where fn:exists($node_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SearchRadar_0 in $node_Entity_0/RFDevice:hasLevel
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationRepresentation_0 in $node_Entity_0/Nuvio:expresses
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_InformationUnit_0 in $doc_ObjectDescription
    let $value_InformationUnit_0 := fn:data($node_InformationUnit_0/@rdf:about)
    for $node_Entity_0 in $node_InformationUnit_0/Nuvio:hasUnitOfMeasure
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_InformationUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationUnit_0">{$value_InformationUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_InformationUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InformationUnit"]
    let $value_InformationUnit_0 := fn:data($node_InformationUnit_0/@rdf:about)
    where fn:exists($node_InformationUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationUnit_0">{$value_InformationUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("InformationUnit_0"))
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Entity_0"))
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationRepresentation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationRepresentation"]
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_InformationRepresentation_0) and $node_Entity_0/Nuvio:representedBy/@rdf:resource = $value_InformationRepresentation_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("Entity_0","InformationRepresentation_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("SearchRadar_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SearchRadar_0"))),("SearchRadar_0"))
