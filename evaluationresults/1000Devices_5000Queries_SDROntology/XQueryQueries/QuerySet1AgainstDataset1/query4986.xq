import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SDR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#SDR"]
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:about)
    where fn:exists($node_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SDR_0 in $node_Entity_0/Nuvio:partOf
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationRepresentation_0 in $doc_ObjectDescription
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_InformationRepresentation_0) and $node_InformationRepresentation_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Tuning"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_AmplitudeModulation_0 in $doc_ObjectDescription
    let $value_AmplitudeModulation_0 := fn:data($node_AmplitudeModulation_0/@rdf:about)
    for $node_Entity_0 in $node_AmplitudeModulation_0/Nuvio:participatesIn
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_AmplitudeModulation_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="AmplitudeModulation_0">{$value_AmplitudeModulation_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_AmplitudeModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AmplitudeModulation"]
    let $value_AmplitudeModulation_0 := fn:data($node_AmplitudeModulation_0/@rdf:about)
    where fn:exists($node_AmplitudeModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="AmplitudeModulation_0">{$value_AmplitudeModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := ($GRAPH_5,$GRAPH_6)
  let $GRAPH_8 := xqllib:optional($GRAPH_3,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_2,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_InformationContent_0 in $doc_ObjectDescription
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    for $node_InformationRepresentation_0 in $node_InformationContent_0/Nuvio:represents
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:resource)
    where fn:exists($node_InformationContent_0) and fn:exists($value_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    for $node_InformationContent_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationContent"]
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    where fn:exists($node_Entity_1) and fn:exists($node_InformationContent_0) and $node_Entity_1/Nuvio:represents/@rdf:resource = $value_InformationContent_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("InformationContent_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_9,$GRAPH_12,("InformationRepresentation_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_1,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_0,$GRAPH_14,("SDR_0"))
  return
    $GRAPH_15
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SDR_0"))),("SDR_0"))
