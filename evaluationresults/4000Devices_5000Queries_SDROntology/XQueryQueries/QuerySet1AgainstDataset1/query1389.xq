import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_CommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CommunicationsSystem"]
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:about)
    where fn:exists($node_CommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_CommunicationsSystem_0 in $doc_ObjectDescription
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:about)
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $node_CommunicationsSystem_0/Nuvio:aggregateOf
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:resource)
    where fn:exists($node_CommunicationsSystem_0) and fn:exists($value_InstantaneousFrequencyMeasurementReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InstantaneousFrequencyMeasurementReceiver"]
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:about)
    where fn:exists($node_InstantaneousFrequencyMeasurementReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $node_RadioFrequencyBand_0/RFDevice:hasFrequencyRange
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:resource)
    where fn:exists($value_InstantaneousFrequencyMeasurementReceiver_0) and fn:exists($node_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioFrequencyBand"]
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    for $node_TimeInterval_0 in $node_RadioFrequencyBand_0/RFDevice:hasMin
    let $value_TimeInterval_0 := fn:data($node_TimeInterval_0/@rdf:resource)
    where fn:exists($node_RadioFrequencyBand_0) and fn:exists($value_TimeInterval_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
        <xqllib:var name="TimeInterval_0">{$value_TimeInterval_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("RadioFrequencyBand_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("RadioFrequencyBand_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("InstantaneousFrequencyMeasurementReceiver_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("InstantaneousFrequencyMeasurementReceiver_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("CommunicationsSystem_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CommunicationsSystem_0"))),("CommunicationsSystem_0"))
