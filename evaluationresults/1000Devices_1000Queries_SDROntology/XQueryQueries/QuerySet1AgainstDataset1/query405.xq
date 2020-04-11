import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ContinuousWaveRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ContinuousWaveRadar"]
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:about)
    where fn:exists($node_ContinuousWaveRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_ContinuousWaveRadar_0 in $node_Entity_0/RFDevice:isProducerOf
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:resource)
    where fn:exists($value_ContinuousWaveRadar_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
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
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyScanRateUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_DRFMJamming_0 in $doc_ObjectDescription
    let $value_DRFMJamming_0 := fn:data($node_DRFMJamming_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_DRFMJamming_0) and fn:exists($node_Entity_0) and $node_DRFMJamming_0/RFDevice:supportsTransmitting/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="DRFMJamming_0">{$value_DRFMJamming_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_DRFMJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DRFMJamming"]
    let $value_DRFMJamming_0 := fn:data($node_DRFMJamming_0/@rdf:about)
    where fn:exists($node_DRFMJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DRFMJamming_0">{$value_DRFMJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := ($GRAPH_6,$GRAPH_7)
  let $GRAPH_9 := ($GRAPH_4,$GRAPH_8)
  let $GRAPH_10 :=  
    for $node_Situation_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#InstantaneousFrequencyMeasurementReceiver_instance45"]/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,())
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("Entity_0","Situation_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_0,$GRAPH_13,("ContinuousWaveRadar_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ContinuousWaveRadar_0"))),("ContinuousWaveRadar_0"))
