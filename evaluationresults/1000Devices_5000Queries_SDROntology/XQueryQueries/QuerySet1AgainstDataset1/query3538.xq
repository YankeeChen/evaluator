import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN200_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN200"]
    let $value_USRPN200_0 := fn:data($node_USRPN200_0/@rdf:about)
    where fn:exists($node_USRPN200_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN200_0">{$value_USRPN200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $doc_ObjectDescription
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:about)
    for $node_USRPN200_0 in $node_InstantaneousFrequencyMeasurementReceiver_0/Nuvio:partOf
    let $value_USRPN200_0 := fn:data($node_USRPN200_0/@rdf:resource)
    where fn:exists($node_InstantaneousFrequencyMeasurementReceiver_0) and fn:exists($value_USRPN200_0)
    return
      <xqllib:result>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
        <xqllib:var name="USRPN200_0">{$value_USRPN200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InstantaneousFrequencyMeasurementReceiver"]
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:about)
    where fn:exists($node_InstantaneousFrequencyMeasurementReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_ADC_0 in $doc_ObjectDescription
    let $value_ADC_0 := fn:data($node_ADC_0/@rdf:about)
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $node_ADC_0/Nuvio:partOf
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:resource)
    where fn:exists($node_ADC_0) and fn:exists($value_InstantaneousFrequencyMeasurementReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="ADC_0">{$value_ADC_0}</xqllib:var>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_OmnidirectionalAntenna_0 in $doc_ObjectDescription
    let $value_OmnidirectionalAntenna_0 := fn:data($node_OmnidirectionalAntenna_0/@rdf:about)
    for $node_ADC_0 in $node_OmnidirectionalAntenna_0/Nuvio:compositeOf
    let $value_ADC_0 := fn:data($node_ADC_0/@rdf:resource)
    where fn:exists($value_ADC_0) and fn:exists($node_OmnidirectionalAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="ADC_0">{$value_ADC_0}</xqllib:var>
        <xqllib:var name="OmnidirectionalAntenna_0">{$value_OmnidirectionalAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_OmnidirectionalAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#OmnidirectionalAntenna"]
    let $value_OmnidirectionalAntenna_0 := fn:data($node_OmnidirectionalAntenna_0/@rdf:about)
    where fn:exists($node_OmnidirectionalAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="OmnidirectionalAntenna_0">{$value_OmnidirectionalAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("OmnidirectionalAntenna_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("ADC_0"))
  let $GRAPH_9 := ($GRAPH_3,$GRAPH_8)
  let $GRAPH_10 := xqllib:and($GRAPH_1,$GRAPH_9,("InstantaneousFrequencyMeasurementReceiver_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_0,$GRAPH_10,("USRPN200_0"))
  return
    $GRAPH_11
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN200_0"))),("USRPN200_0"))
