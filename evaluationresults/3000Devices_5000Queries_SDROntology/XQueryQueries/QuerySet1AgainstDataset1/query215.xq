import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace geosparql = "http://www.opengis.net/ont/geosparql#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
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
    for $node_RadarSystem_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Entity_0 in $node_InformationEntity_0/Nuvio:isExpressedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Geometry_0 in $node_Entity_0/Nuvio:relevantIndividual
    let $value_Geometry_0 := fn:data($node_Geometry_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Geometry_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Geometry_0">{$value_Geometry_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Geometry_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/geosparql#Geometry"]
    let $value_Geometry_0 := fn:data($node_Geometry_0/@rdf:about)
    where fn:exists($node_Geometry_0)
    return
      <xqllib:result>
        <xqllib:var name="Geometry_0">{$value_Geometry_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Geometry_0"))
  let $GRAPH_6 :=  
    for $node_AntennaPolarization_0 in $doc_ObjectDescription
    let $value_AntennaPolarization_0 := fn:data($node_AntennaPolarization_0/@rdf:about)
    for $node_Entity_0 in $node_AntennaPolarization_0/Nuvio:hasObjectQuality
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_AntennaPolarization_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="AntennaPolarization_0">{$value_AntennaPolarization_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_AntennaPolarization_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AntennaPolarization"]
    let $value_AntennaPolarization_0 := fn:data($node_AntennaPolarization_0/@rdf:about)
    where fn:exists($node_AntennaPolarization_0)
    return
      <xqllib:result>
        <xqllib:var name="AntennaPolarization_0">{$value_AntennaPolarization_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("AntennaPolarization_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_GeometricComplex_0 in $doc_ObjectDescription
    let $value_GeometricComplex_0 := fn:data($node_GeometricComplex_0/@rdf:about)
    for $node_InformationEntity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    where fn:exists($node_GeometricComplex_0) and fn:exists($node_InformationEntity_0) and $node_GeometricComplex_0/Nuvio:isExpressedBy/@rdf:resource = $value_InformationEntity_0
    return
      <xqllib:result>
        <xqllib:var name="GeometricComplex_0">{$value_GeometricComplex_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_GeometricComplex_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#GeometricComplex"]
    let $value_GeometricComplex_0 := fn:data($node_GeometricComplex_0/@rdf:about)
    where fn:exists($node_GeometricComplex_0)
    return
      <xqllib:result>
        <xqllib:var name="GeometricComplex_0">{$value_GeometricComplex_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("GeometricComplex_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_9,$GRAPH_12,())
  let $GRAPH_14 := xqllib:and($GRAPH_2,$GRAPH_13,("Entity_0","InformationEntity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_1,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_0,$GRAPH_15,("RadarSystem_0"))
  return
    $GRAPH_16
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
