import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace skos = "http://www.w3.org/2004/02/skos/core#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB2xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB2xx"]
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:about)
    where fn:exists($node_USRPB2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPB2xx_0 in $node_Entity_0/Nuvio:partOf
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPB2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_Entity_0 in $node_Situation_0/Nuvio:isExpressedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_AbstractGriddedSurface_0 in $doc_ObjectDescription
    let $value_AbstractGriddedSurface_0 := fn:data($node_AbstractGriddedSurface_0/@rdf:about)
    for $node_Situation_0 in $node_AbstractGriddedSurface_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_AbstractGriddedSurface_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="AbstractGriddedSurface_0">{$value_AbstractGriddedSurface_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_ConceptScheme_0 in $doc_ObjectDescription
    let $value_ConceptScheme_0 := fn:data($node_ConceptScheme_0/@rdf:about)
    for $node_Situation_0 in $node_ConceptScheme_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_ConceptScheme_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="ConceptScheme_0">{$value_ConceptScheme_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_ConceptScheme_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.w3.org/2004/02/skos/core#ConceptScheme"]
    let $value_ConceptScheme_0 := fn:data($node_ConceptScheme_0/@rdf:about)
    for $node_Concept_0 in $doc_ObjectDescription
    let $value_Concept_0 := fn:data($node_Concept_0/@rdf:about)
    where fn:exists($node_ConceptScheme_0) and fn:exists($node_Concept_0) and $node_Concept_0/skos:hasTopConcept/@rdf:resource = $value_ConceptScheme_0
    return
      <xqllib:result>
        <xqllib:var name="ConceptScheme_0">{$value_ConceptScheme_0}</xqllib:var>
        <xqllib:var name="Concept_0">{$value_Concept_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Collection_0 in $doc_ObjectDescription
    let $value_Collection_0 := fn:data($node_Collection_0/@rdf:about)
    for $node_Concept_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.w3.org/2004/02/skos/core#Concept"]
    let $value_Concept_0 := fn:data($node_Concept_0/@rdf:about)
    where fn:exists($node_Collection_0) and fn:exists($node_Concept_0) and $node_Collection_0/skos:inScheme/@rdf:resource = $value_Concept_0
    return
      <xqllib:result>
        <xqllib:var name="Collection_0">{$value_Collection_0}</xqllib:var>
        <xqllib:var name="Concept_0">{$value_Concept_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Collection_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.w3.org/2004/02/skos/core#Collection"]
    let $value_Collection_0 := fn:data($node_Collection_0/@rdf:about)
    where fn:exists($node_Collection_0)
    return
      <xqllib:result>
        <xqllib:var name="Collection_0">{$value_Collection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Collection_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("Concept_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_4,$GRAPH_9,("ConceptScheme_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_3,$GRAPH_10,("Situation_0"))
  let $GRAPH_12 :=  
    for $node_AbstractGriddedSurface_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#AbstractGriddedSurface"]
    let $value_AbstractGriddedSurface_0 := fn:data($node_AbstractGriddedSurface_0/@rdf:about)
    where fn:exists($node_AbstractGriddedSurface_0)
    return
      <xqllib:result>
        <xqllib:var name="AbstractGriddedSurface_0">{$value_AbstractGriddedSurface_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("AbstractGriddedSurface_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_2,$GRAPH_13,("Situation_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_1,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_0,$GRAPH_15,("USRPB2xx_0"))
  return
    $GRAPH_16
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xx_0"))),("USRPB2xx_0"))
