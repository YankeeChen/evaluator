import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
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
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPN300_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPN300_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Value_0 in $doc_ObjectDescription
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Value_0) and $node_Value_0/Nuvio:expresses/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CrossPolarizationJamming"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#InstantaneousFrequencyMeasurementReceiver_instance66"]/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DeceptiveCommunicationsJamming_0 in $node_Entity_0/Nuvio:relevantIndividual
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:resource)
    where fn:exists($value_DeceptiveCommunicationsJamming_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_DeceptiveCommunicationsJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveCommunicationsJamming"]
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:about)
    where fn:exists($node_DeceptiveCommunicationsJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_DeceptiveCommunicationsJamming_0 in $doc_ObjectDescription[RFDevice:hasPulseWidth/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Power_instance65"]
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:about)
    where fn:exists($node_DeceptiveCommunicationsJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:optional($GRAPH_7,$GRAPH_8,("DeceptiveCommunicationsJamming_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("DeceptiveCommunicationsJamming_0"))
  let $GRAPH_11 := ($GRAPH_5,$GRAPH_10)
  let $GRAPH_12 := xqllib:and($GRAPH_3,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 :=  
    for $node_Value_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    for $node_FrequencyUnit_0 in $node_Value_0/Nuvio:hasUnitOfMeasure
    let $value_FrequencyUnit_0 := fn:data($node_FrequencyUnit_0/@rdf:resource)
    where fn:exists($value_FrequencyUnit_0) and fn:exists($node_Value_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyUnit_0">{$value_FrequencyUnit_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_FrequencyUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyUnit"]
    let $value_FrequencyUnit_0 := fn:data($node_FrequencyUnit_0/@rdf:about)
    where fn:exists($node_FrequencyUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyUnit_0">{$value_FrequencyUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("FrequencyUnit_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_12,$GRAPH_15,())
  let $GRAPH_17 := xqllib:and($GRAPH_2,$GRAPH_16,("Entity_0","Value_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_0,$GRAPH_18,("USRPN300_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN300_0"))),("USRPN300_0"))
