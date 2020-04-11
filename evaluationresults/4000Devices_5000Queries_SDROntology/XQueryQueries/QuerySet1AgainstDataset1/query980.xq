import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN310_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN310"]
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:about)
    where fn:exists($node_USRPN310_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPN310_0 in $doc_ObjectDescription
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:about)
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $node_USRPN310_0/Nuvio:aggregateOf
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:resource)
    where fn:exists($value_InstantaneousFrequencyMeasurementReceiver_0) and fn:exists($node_USRPN310_0)
    return
      <xqllib:result>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Spartan3ADSPFPGA_0 in $doc_ObjectDescription
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:about)
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $node_Spartan3ADSPFPGA_0/Nuvio:compositeOf
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:resource)
    where fn:exists($value_InstantaneousFrequencyMeasurementReceiver_0) and fn:exists($node_Spartan3ADSPFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_XilinxZynq7000Family_0 in $doc_ObjectDescription
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:about)
    for $node_Spartan3ADSPFPGA_0 in $node_XilinxZynq7000Family_0/Nuvio:aggregateOf
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:resource)
    where fn:exists($value_Spartan3ADSPFPGA_0) and fn:exists($node_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_XilinxZynq7000Family_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XilinxZynq7000Family"]
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:about)
    where fn:exists($node_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_XilinxZynq7000Family_0 in $node_Object_0/RFDevice:hasProducer
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Ratio_0 in $doc_ObjectDescription
    let $value_Ratio_0 := fn:data($node_Ratio_0/@rdf:about)
    where fn:exists($node_Object_0) and fn:exists($node_Ratio_0) and $node_Ratio_0/RFDevice:hasLength/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Ratio_0">{$value_Ratio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Ratio_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Ratio"]
    let $value_Ratio_0 := fn:data($node_Ratio_0/@rdf:about)
    where fn:exists($node_Ratio_0)
    return
      <xqllib:result>
        <xqllib:var name="Ratio_0">{$value_Ratio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Ratio_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("Object_0"))
  let $GRAPH_10 :=  
    for $node_Producer_0 in $doc_ObjectDescription
    let $value_Producer_0 := fn:data($node_Producer_0/@rdf:about)
    for $node_XilinxZynq7000Family_0 in $node_Producer_0/RFDevice:isProducerOf
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:resource)
    where fn:exists($node_Producer_0) and fn:exists($value_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="Producer_0">{$value_Producer_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("XilinxZynq7000Family_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_4,$GRAPH_11,("XilinxZynq7000Family_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_3,$GRAPH_12,("XilinxZynq7000Family_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_2,$GRAPH_13,("Spartan3ADSPFPGA_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_1,$GRAPH_14,("InstantaneousFrequencyMeasurementReceiver_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_0,$GRAPH_15,("USRPN310_0"))
  return
    $GRAPH_16
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN310_0"))),("USRPN310_0"))
