import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_GNURadio_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#GNURadio"]
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:about)
    where fn:exists($node_GNURadio_0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_GNURadio_0 in $node_Object_0/RFDevice:isProducerOf
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:resource)
    where fn:exists($value_GNURadio_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_TerrainBounceJamming_0 in $doc_ObjectDescription
    let $value_TerrainBounceJamming_0 := fn:data($node_TerrainBounceJamming_0/@rdf:about)
    where fn:exists($node_Object_0) and fn:exists($node_TerrainBounceJamming_0) and $node_TerrainBounceJamming_0/RFDevice:supportsTransmitting/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="TerrainBounceJamming_0">{$value_TerrainBounceJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_TerrainBounceJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TerrainBounceJamming"]
    let $value_TerrainBounceJamming_0 := fn:data($node_TerrainBounceJamming_0/@rdf:about)
    where fn:exists($node_TerrainBounceJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="TerrainBounceJamming_0">{$value_TerrainBounceJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_TerrainBounceJamming_0 in $node_Entity_0/RFDevice:hasPulseWidth
    let $value_TerrainBounceJamming_0 := fn:data($node_TerrainBounceJamming_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_TerrainBounceJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="TerrainBounceJamming_0">{$value_TerrainBounceJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FloatValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Percentage"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_CompositeSurface_0 in $node_Entity_0/Nuvio:hasParticipant
    let $value_CompositeSurface_0 := fn:data($node_CompositeSurface_0/@rdf:resource)
    where fn:exists($value_CompositeSurface_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeSurface_0">{$value_CompositeSurface_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_CompositeSurface_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#CompositeSurface"]
    let $value_CompositeSurface_0 := fn:data($node_CompositeSurface_0/@rdf:about)
    where fn:exists($node_CompositeSurface_0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeSurface_0">{$value_CompositeSurface_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("CompositeSurface_0"))
  let $GRAPH_13 := ($GRAPH_9,$GRAPH_12)
  let $GRAPH_14 := xqllib:and($GRAPH_7,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_6,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_5,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := ($GRAPH_4,$GRAPH_16)
  let $GRAPH_18 := xqllib:and($GRAPH_2,$GRAPH_17,("TerrainBounceJamming_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_1,$GRAPH_18,("Object_0"))
  let $GRAPH_20 := xqllib:optional($GRAPH_0,$GRAPH_19,("GNURadio_0"))
  return
    $GRAPH_20
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("GNURadio_0"))),("GNURadio_0"))
