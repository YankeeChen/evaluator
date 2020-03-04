import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN300_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN300"]
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:about)
    where fn:exists($node_USRPN300_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPN300_0 in $doc_ObjectDescription
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:about)
    for $node_XilinxZynq7000Family_0 in $node_USRPN300_0/Nuvio:partOf
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:resource)
    where fn:exists($node_USRPN300_0) and fn:exists($value_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_XilinxZynq7000Family_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XilinxZynq7000Family"]
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:about)
    where fn:exists($node_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_XilinxZynq7000Family_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
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
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/RFDevice:supportsJamming
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Entity_0"))
  let $GRAPH_8 :=  
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_OmnidirectionalAntenna_0 in $node_Situation_0/Nuvio:relevantIndividual
    let $value_OmnidirectionalAntenna_0 := fn:data($node_OmnidirectionalAntenna_0/@rdf:resource)
    where fn:exists($value_OmnidirectionalAntenna_0) and fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="OmnidirectionalAntenna_0">{$value_OmnidirectionalAntenna_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_OmnidirectionalAntenna_0 in $doc_ObjectDescription
    let $value_OmnidirectionalAntenna_0 := fn:data($node_OmnidirectionalAntenna_0/@rdf:about)
    for $node_Entity_1 in $node_OmnidirectionalAntenna_0/RFDevice:hasProducer
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:resource)
    where fn:exists($value_Entity_1) and fn:exists($node_OmnidirectionalAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
        <xqllib:var name="OmnidirectionalAntenna_0">{$value_OmnidirectionalAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_OmnidirectionalAntenna_0 in $node_Object_0/RFDevice:isProducerOf
    let $value_OmnidirectionalAntenna_0 := fn:data($node_OmnidirectionalAntenna_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_OmnidirectionalAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="OmnidirectionalAntenna_0">{$value_OmnidirectionalAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_DeceptiveCommunicationsJamming_0 in $node_Object_0/Nuvio:hasParticipant
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:resource)
    where fn:exists($value_DeceptiveCommunicationsJamming_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_DeceptiveCommunicationsJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveCommunicationsJamming"]
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:about)
    where fn:exists($node_DeceptiveCommunicationsJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DeceptiveCommunicationsJamming_0 in $node_Entity_0/RFDevice:hasEffectiveRadiatedPower
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:resource)
    where fn:exists($value_DeceptiveCommunicationsJamming_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("DeceptiveCommunicationsJamming_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_12,$GRAPH_15,("DeceptiveCommunicationsJamming_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_11,$GRAPH_16,("Object_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_10,$GRAPH_17,("OmnidirectionalAntenna_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_9,$GRAPH_18,("OmnidirectionalAntenna_0"))
  let $GRAPH_20 := ($GRAPH_8,$GRAPH_19)
  let $GRAPH_21 := xqllib:and($GRAPH_6,$GRAPH_20,("Entity_0","Situation_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_3,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_2,$GRAPH_22,("XilinxZynq7000Family_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_1,$GRAPH_23,("XilinxZynq7000Family_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_0,$GRAPH_24,("USRPN300_0"))
  return
    $GRAPH_25
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN300_0"))),("USRPN300_0"))
