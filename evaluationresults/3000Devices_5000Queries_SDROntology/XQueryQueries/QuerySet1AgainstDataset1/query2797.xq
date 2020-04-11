import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB205mini_i_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB205mini-i"]
    let $value_USRPB205mini_i_0 := fn:data($node_USRPB205mini_i_0/@rdf:about)
    where fn:exists($node_USRPB205mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB205mini_i_0">{$value_USRPB205mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPB205mini_i_0 in $node_Entity_0/RFDevice:hasWeight
    let $value_USRPB205mini_i_0 := fn:data($node_USRPB205mini_i_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPB205mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPB205mini_i_0">{$value_USRPB205mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_UnitOfMeasure_0 in $doc_ObjectDescription
    let $value_UnitOfMeasure_0 := fn:data($node_UnitOfMeasure_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_UnitOfMeasure_0) and $node_UnitOfMeasure_0/Nuvio:expresses/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="UnitOfMeasure_0">{$value_UnitOfMeasure_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transmitting"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Entity_0 in $node_Attribute_0/RFDevice:hasPulseRepetitionInterval
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Entity_0"))
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpatialUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Entity_0"))
  let $GRAPH_9 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_Entity_0 in $node_Quantity_0/RFDevice:hasPolarization
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Quantity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quantity"]
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    where fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Quantity_0"))
  let $GRAPH_13 :=  
    for $node_CyclostationaryDetection_0 in $doc_ObjectDescription
    let $value_CyclostationaryDetection_0 := fn:data($node_CyclostationaryDetection_0/@rdf:about)
    for $node_Entity_0 in $node_CyclostationaryDetection_0/Nuvio:hasSubprocess
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_CyclostationaryDetection_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CyclostationaryDetection_0">{$value_CyclostationaryDetection_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_CyclostationaryDetection_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CyclostationaryDetection"]
    let $value_CyclostationaryDetection_0 := fn:data($node_CyclostationaryDetection_0/@rdf:about)
    where fn:exists($node_CyclostationaryDetection_0)
    return
      <xqllib:result>
        <xqllib:var name="CyclostationaryDetection_0">{$value_CyclostationaryDetection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := ($GRAPH_13,$GRAPH_14)
  let $GRAPH_16 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_MultiPolygon_0 in $doc_ObjectDescription
    let $value_MultiPolygon_0 := fn:data($node_MultiPolygon_0/@rdf:about)
    for $node_Entity_0 in $node_MultiPolygon_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_MultiPolygon_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="MultiPolygon_0">{$value_MultiPolygon_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := xqllib:optional($GRAPH_16,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_15,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := ($GRAPH_11,$GRAPH_19)
  let $GRAPH_21 := xqllib:and($GRAPH_7,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := xqllib:optional($GRAPH_2,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_1,$GRAPH_22,("Entity_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_0,$GRAPH_23,("USRPB205mini_i_0"))
  return
    $GRAPH_24
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB205mini_i_0"))),("USRPB205mini_i_0"))
