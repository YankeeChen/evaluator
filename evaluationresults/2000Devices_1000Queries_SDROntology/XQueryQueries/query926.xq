import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace geosparql = "http://www.opengis.net/ont/geosparql#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseRadar"]
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:about)
    where fn:exists($node_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_PulseRadar_0 in $doc_ObjectDescription
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:about)
    for $node_Object_0 in $node_PulseRadar_0/RFDevice:isProducerOf
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_DeceptiveCommunicationsJamming_0 in $doc_ObjectDescription
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_DeceptiveCommunicationsJamming_0) and fn:exists($node_Object_0) and $node_DeceptiveCommunicationsJamming_0/Nuvio:participatesIn/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_DeceptiveCommunicationsJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveCommunicationsJamming"]
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:about)
    where fn:exists($node_DeceptiveCommunicationsJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DeceptiveCommunicationsJamming_0 in $node_Entity_0/Nuvio:hasProcessQuantity
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:resource)
    where fn:exists($value_DeceptiveCommunicationsJamming_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Sphere_0 in $doc_ObjectDescription
    let $value_Sphere_0 := fn:data($node_Sphere_0/@rdf:about)
    for $node_Entity_0 in $node_Sphere_0/geosparql:defaultGeometry
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Sphere_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Sphere_0">{$value_Sphere_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Sphere_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#Sphere"]
    let $value_Sphere_0 := fn:data($node_Sphere_0/@rdf:about)
    where fn:exists($node_Sphere_0)
    return
      <xqllib:result>
        <xqllib:var name="Sphere_0">{$value_Sphere_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Sphere_0"))
  let $GRAPH_9 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectricChargeUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_5,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_4,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_3,$GRAPH_12,("DeceptiveCommunicationsJamming_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_2,$GRAPH_13,("DeceptiveCommunicationsJamming_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_1,$GRAPH_14,("Object_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_0,$GRAPH_15,("PulseRadar_0"))
  return
    $GRAPH_16
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseRadar_0"))),("PulseRadar_0"))
