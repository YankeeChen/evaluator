import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
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
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPB200mini_0 in $node_Var0/Nuvio:aggregateOf
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:resource)
    where fn:exists($value_USRPB200mini_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/RFDevice:hasResolution
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ADC"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $doc_ObjectDescription
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:about)
    for $node_Var0 in $node_InstantaneousFrequencyMeasurementReceiver_0/Nuvio:aggregateOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_InstantaneousFrequencyMeasurementReceiver_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InstantaneousFrequencyMeasurementReceiver_0 in $node_Entity_0/RFDevice:hasCapability
    let $value_InstantaneousFrequencyMeasurementReceiver_0 := fn:data($node_InstantaneousFrequencyMeasurementReceiver_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_InstantaneousFrequencyMeasurementReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InstantaneousFrequencyMeasurementReceiver_0">{$value_InstantaneousFrequencyMeasurementReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#UnmannedPlatform"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AmplitudeModulation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:optional($GRAPH_7,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IntValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DataValue0 in $node_Entity_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := $GRAPH_11[(data(xqllib:var[@name="DataValue0"]) != -313430902)]
  let $GRAPH_13 := xqllib:and($GRAPH_10,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_9,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Height"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_XC6SLX150FPGA_0 in $doc_ObjectDescription
    let $value_XC6SLX150FPGA_0 := fn:data($node_XC6SLX150FPGA_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_XC6SLX150FPGA_0) and $node_XC6SLX150FPGA_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="XC6SLX150FPGA_0">{$value_XC6SLX150FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_XC6SLX150FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC6SLX150FPGA"]
    let $value_XC6SLX150FPGA_0 := fn:data($node_XC6SLX150FPGA_0/@rdf:about)
    where fn:exists($node_XC6SLX150FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC6SLX150FPGA_0">{$value_XC6SLX150FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := xqllib:optional($GRAPH_16,$GRAPH_17,("XC6SLX150FPGA_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_15,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := ($GRAPH_14,$GRAPH_19)
  let $GRAPH_21 := xqllib:and($GRAPH_5,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_4,$GRAPH_21,("InstantaneousFrequencyMeasurementReceiver_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_3,$GRAPH_22,("Var0"))
  let $GRAPH_24 := xqllib:and($GRAPH_2,$GRAPH_23,("Var0"))
  let $GRAPH_25 := xqllib:and($GRAPH_1,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_0,$GRAPH_25,("USRPB200mini_0"))
  return
    $GRAPH_26
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200mini_0"))),("USRPB200mini_0"))
