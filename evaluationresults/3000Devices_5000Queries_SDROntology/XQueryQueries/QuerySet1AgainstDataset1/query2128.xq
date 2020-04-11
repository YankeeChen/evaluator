import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
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
    for $node_RadarSystem_0 in $doc_ObjectDescription
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    for $node_Transmitter_0 in $node_RadarSystem_0/Nuvio:compositeOf
    let $value_Transmitter_0 := fn:data($node_Transmitter_0/@rdf:resource)
    where fn:exists($node_RadarSystem_0) and fn:exists($value_Transmitter_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
        <xqllib:var name="Transmitter_0">{$value_Transmitter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Transmitter_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transmitter"]
    let $value_Transmitter_0 := fn:data($node_Transmitter_0/@rdf:about)
    where fn:exists($node_Transmitter_0)
    return
      <xqllib:result>
        <xqllib:var name="Transmitter_0">{$value_Transmitter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_DeceptiveCommunicationsJamming_0 in $doc_ObjectDescription
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:about)
    for $node_Transmitter_0 in $node_DeceptiveCommunicationsJamming_0/RFDevice:supportsSpectrumSensing
    let $value_Transmitter_0 := fn:data($node_Transmitter_0/@rdf:resource)
    where fn:exists($node_DeceptiveCommunicationsJamming_0) and fn:exists($value_Transmitter_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Transmitter_0">{$value_Transmitter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_DeceptiveCommunicationsJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveCommunicationsJamming"]
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:about)
    where fn:exists($node_DeceptiveCommunicationsJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_DeceptiveCommunicationsJamming_0 in $node_Power_0/RFDevice:hasPulseRepetitionFrequency
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:resource)
    where fn:exists($value_DeceptiveCommunicationsJamming_0) and fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Power_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Power"]
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    where fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Power_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("DeceptiveCommunicationsJamming_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("DeceptiveCommunicationsJamming_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("Transmitter_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Transmitter_0"))
  let $GRAPH_12 := xqllib:optional($GRAPH_0,$GRAPH_11,("RadarSystem_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
