import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SurveillanceRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SurveillanceRadar"]
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:about)
    where fn:exists($node_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_SurveillanceRadar_0 in $node_Var0/RFDevice:supportsTuning
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:resource)
    where fn:exists($value_SurveillanceRadar_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN3xx"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_CoverPulsesJamming_0 in $doc_ObjectDescription
    let $value_CoverPulsesJamming_0 := fn:data($node_CoverPulsesJamming_0/@rdf:about)
    for $node_Var0 in $node_CoverPulsesJamming_0/Nuvio:isExpressedBy
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_CoverPulsesJamming_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="CoverPulsesJamming_0">{$value_CoverPulsesJamming_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_CoverPulsesJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CoverPulsesJamming"]
    let $value_CoverPulsesJamming_0 := fn:data($node_CoverPulsesJamming_0/@rdf:about)
    where fn:exists($node_CoverPulsesJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="CoverPulsesJamming_0">{$value_CoverPulsesJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_CoverPulsesJamming_0 in $doc_ObjectDescription
    let $value_CoverPulsesJamming_0 := fn:data($node_CoverPulsesJamming_0/@rdf:about)
    for $node_Power_0 in $node_CoverPulsesJamming_0/RFDevice:hasPulseRepetitionFrequency
    let $value_Power_0 := fn:data($node_Power_0/@rdf:resource)
    where fn:exists($node_CoverPulsesJamming_0) and fn:exists($value_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="CoverPulsesJamming_0">{$value_CoverPulsesJamming_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Power_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Power"]
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    where fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Power_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("CoverPulsesJamming_0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_4,$GRAPH_9,("CoverPulsesJamming_0"))
  let $GRAPH_11 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:optional($GRAPH_10,$GRAPH_11,("Var0"))
  let $GRAPH_13 := xqllib:and($GRAPH_3,$GRAPH_12,("Var0"))
  let $GRAPH_14 := xqllib:and($GRAPH_2,$GRAPH_13,("Var0"))
  let $GRAPH_15 :=  
    for $node_Transceiving_0 in $doc_ObjectDescription
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    for $node_Var0 in $node_Transceiving_0/Nuvio:hasSubprocess
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Transceiving_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Transceiving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiving"]
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    where fn:exists($node_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := xqllib:and($GRAPH_15,$GRAPH_16,("Transceiving_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_14,$GRAPH_17,("Var0"))
  let $GRAPH_19 := xqllib:and($GRAPH_1,$GRAPH_18,("Var0"))
  let $GRAPH_20 := xqllib:and($GRAPH_0,$GRAPH_19,("SurveillanceRadar_0"))
  return
    $GRAPH_20
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SurveillanceRadar_0"))),("SurveillanceRadar_0"))
