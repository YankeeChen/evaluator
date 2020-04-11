import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_Half_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Half-DuplexCommunicationsSystem"]
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Half_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Half_DuplexCommunicationsSystem_0 in $node_Entity_0/RFDevice:isProducerOf
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Half_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_PulseDopplerRadarModulation_0 in $doc_ObjectDescription
    let $value_PulseDopplerRadarModulation_0 := fn:data($node_PulseDopplerRadarModulation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_PulseDopplerRadarModulation_0) and $node_PulseDopplerRadarModulation_0/RFDevice:supportsTuning/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="PulseDopplerRadarModulation_0">{$value_PulseDopplerRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Frequency_0 in $doc_ObjectDescription
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:about)
    for $node_PulseDopplerRadarModulation_0 in $node_Frequency_0/RFDevice:hasTransmitPowerRange
    let $value_PulseDopplerRadarModulation_0 := fn:data($node_PulseDopplerRadarModulation_0/@rdf:resource)
    where fn:exists($node_Frequency_0) and fn:exists($value_PulseDopplerRadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
        <xqllib:var name="PulseDopplerRadarModulation_0">{$value_PulseDopplerRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := ($GRAPH_4,$GRAPH_5)
  let $GRAPH_7 :=  
    for $node_DeceptiveJamming_0 in $doc_ObjectDescription
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:about)
    for $node_Entity_0 in $node_DeceptiveJamming_0/Nuvio:subprocessOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_DeceptiveJamming_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_DeceptiveJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveJamming"]
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:about)
    where fn:exists($node_DeceptiveJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("DeceptiveJamming_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 := xqllib:optional($GRAPH_2,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_1,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := xqllib:optional($GRAPH_0,$GRAPH_12,("Half_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_13
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Half_DuplexCommunicationsSystem_0"))),("Half_DuplexCommunicationsSystem_0"))
