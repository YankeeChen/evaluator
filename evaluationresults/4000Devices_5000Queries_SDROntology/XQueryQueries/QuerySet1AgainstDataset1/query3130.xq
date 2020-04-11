import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_CR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#CR"]
    let $value_CR_0 := fn:data($node_CR_0/@rdf:about)
    where fn:exists($node_CR_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $doc_ObjectDescription
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:about)
    for $node_CR_0 in $node_InstantaneousFrequencyMeasurementReceiver_0/Nuvio:compositeOf
    let $value_CR_0 := fn:data($node_CR_0/@rdf:resource)
    where fn:exists($value_CR_0) and fn:exists($node_InstantaneousFrequencyMeasurementReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $node_Object_0/RFDevice:isProducerOf
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:resource)
    where fn:exists($value_InstantaneousFrequencyMeasurementReceiver_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Object_0"))
  let $GRAPH_6 :=  
    for $node_Object_1 in $doc_ObjectDescription
    let $value_Object_1 := fn:data($node_Object_1/@rdf:about)
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $node_Object_1/RFDevice:isProducerOf
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:resource)
    where fn:exists($value_InstantaneousFrequencyMeasurementReceiver_0) and fn:exists($node_Object_1)
    return
      <xqllib:result>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
        <xqllib:var name="Object_1">{$value_Object_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := ($GRAPH_5,$GRAPH_6)
  let $GRAPH_8 := xqllib:and($GRAPH_1,$GRAPH_7,("InstantaneousFrequencyMeasurementReceiver_0"))
  let $GRAPH_9 := xqllib:optional($GRAPH_0,$GRAPH_8,("CR_0"))
  return
    $GRAPH_9
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CR_0"))),("CR_0"))
