import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace geosparql = "http://www.opengis.net/ont/geosparql#";
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
    for $node_RadioComponent_0 in $doc_ObjectDescription
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:about)
    for $node_USRPB2xx_0 in $node_RadioComponent_0/Nuvio:aggregateOf
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:resource)
    where fn:exists($node_RadioComponent_0) and fn:exists($value_USRPB2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_ChokeRingAntenna_0 in $doc_ObjectDescription
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:about)
    for $node_RadioComponent_0 in $node_ChokeRingAntenna_0/Nuvio:compositeOf
    let $value_RadioComponent_0 := fn:data($node_RadioComponent_0/@rdf:resource)
    where fn:exists($node_ChokeRingAntenna_0) and fn:exists($value_RadioComponent_0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
        <xqllib:var name="RadioComponent_0">{$value_RadioComponent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_ChokeRingAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ChokeRingAntenna"]
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:about)
    where fn:exists($node_ChokeRingAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_ChokeRingAntenna_0 in $node_Entity_0/RFDevice:hasPolarization
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:resource)
    where fn:exists($value_ChokeRingAntenna_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationRepresentation_0 in $doc_ObjectDescription
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_InformationRepresentation_0) and $node_InformationRepresentation_0/Nuvio:expresses/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PositiveDecimalValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Length"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SpatialObject_0 in $doc_ObjectDescription
    let $value_SpatialObject_0 := fn:data($node_SpatialObject_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_SpatialObject_0) and $node_SpatialObject_0/Nuvio:expresses/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SpatialObject_0">{$value_SpatialObject_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_SpatialObject_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/geosparql#SpatialObject"]
    let $value_SpatialObject_0 := fn:data($node_SpatialObject_0/@rdf:about)
    where fn:exists($node_SpatialObject_0)
    return
      <xqllib:result>
        <xqllib:var name="SpatialObject_0">{$value_SpatialObject_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("SpatialObject_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_10,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_9,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := ($GRAPH_6,$GRAPH_15)
  let $GRAPH_17 := xqllib:and($GRAPH_4,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_3,$GRAPH_17,("ChokeRingAntenna_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_2,$GRAPH_18,("ChokeRingAntenna_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_1,$GRAPH_19,("RadioComponent_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_0,$GRAPH_20,("USRPB2xx_0"))
  return
    $GRAPH_21
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xx_0"))),("USRPB2xx_0"))
