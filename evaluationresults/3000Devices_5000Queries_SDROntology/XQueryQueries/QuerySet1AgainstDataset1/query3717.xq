import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200mini_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200mini"]
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:about)
    where fn:exists($node_USRPB200mini_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPB200mini_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPB200mini_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Situation_0) and $node_Situation_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_DirectionalAntenna_0 in $node_Situation_0/Nuvio:relevantIndividual
    let $value_DirectionalAntenna_0 := fn:data($node_DirectionalAntenna_0/@rdf:resource)
    where fn:exists($value_DirectionalAntenna_0) and fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectionalAntenna_0">{$value_DirectionalAntenna_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_DirectionalAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DirectionalAntenna"]
    let $value_DirectionalAntenna_0 := fn:data($node_DirectionalAntenna_0/@rdf:about)
    where fn:exists($node_DirectionalAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectionalAntenna_0">{$value_DirectionalAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Quality_0 in $doc_ObjectDescription
    let $value_Quality_0 := fn:data($node_Quality_0/@rdf:about)
    for $node_DirectionalAntenna_0 in $node_Quality_0/RFDevice:hasPolarization
    let $value_DirectionalAntenna_0 := fn:data($node_DirectionalAntenna_0/@rdf:resource)
    where fn:exists($value_DirectionalAntenna_0) and fn:exists($node_Quality_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectionalAntenna_0">{$value_DirectionalAntenna_0}</xqllib:var>
        <xqllib:var name="Quality_0">{$value_Quality_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("DirectionalAntenna_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("DirectionalAntenna_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("Situation_0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_2,$GRAPH_9,("Situation_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("USRPB200mini_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200mini_0"))),("USRPB200mini_0"))
