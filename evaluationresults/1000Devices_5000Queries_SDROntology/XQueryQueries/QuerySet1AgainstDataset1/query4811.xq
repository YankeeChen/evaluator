import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace geosparql = "http://www.opengis.net/ont/geosparql#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseDopplerRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseDopplerRadar"]
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:about)
    where fn:exists($node_PulseDopplerRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Transmitter_0 in $doc_ObjectDescription
    let $value_Transmitter_0 := fn:data($node_Transmitter_0/@rdf:about)
    for $node_PulseDopplerRadar_0 in $node_Transmitter_0/Nuvio:partOf
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:resource)
    where fn:exists($value_PulseDopplerRadar_0) and fn:exists($node_Transmitter_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
        <xqllib:var name="Transmitter_0">{$value_Transmitter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Transmitter_0 in $node_Object_0/RFDevice:hasFrequencyAccuracy
    let $value_Transmitter_0 := fn:data($node_Transmitter_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_Transmitter_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Transmitter_0">{$value_Transmitter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Object_0) and $node_Entity_0/RFDevice:hasPolarization/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Entity_1) and $node_Entity_1/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioComponent"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_GeometricComplex_0 in $node_Entity_0/Nuvio:relevantIndividual
    let $value_GeometricComplex_0 := fn:data($node_GeometricComplex_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_GeometricComplex_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="GeometricComplex_0">{$value_GeometricComplex_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Geometry_0 in $doc_ObjectDescription
    let $value_Geometry_0 := fn:data($node_Geometry_0/@rdf:about)
    for $node_Entity_0 in $node_Geometry_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Geometry_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Geometry_0">{$value_Geometry_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Geometry_0 in $doc_ObjectDescription
    let $value_Geometry_0 := fn:data($node_Geometry_0/@rdf:about)
    for $node_DataValue0 in $node_Geometry_0/geosparql:asWKT
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Geometry_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Geometry_0">{$value_Geometry_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Geometry_0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_6,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 :=  
    for $node_GeometricComplex_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#GeometricComplex"]
    let $value_GeometricComplex_0 := fn:data($node_GeometricComplex_0/@rdf:about)
    where fn:exists($node_GeometricComplex_0)
    return
      <xqllib:result>
        <xqllib:var name="GeometricComplex_0">{$value_GeometricComplex_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("GeometricComplex_0"))
  let $GRAPH_13 := xqllib:optional($GRAPH_5,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_4,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_3,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_2,$GRAPH_15,("Object_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_1,$GRAPH_16,("Transmitter_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_0,$GRAPH_17,("PulseDopplerRadar_0"))
  return
    $GRAPH_18
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseDopplerRadar_0"))),("PulseDopplerRadar_0"))
