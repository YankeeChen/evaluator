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
    for $node_ContinuousWaveRadar_0 in $doc_ObjectDescription
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:about)
    for $node_Transmitter_0 in $node_ContinuousWaveRadar_0/Nuvio:aggregateOf
    let $value_Transmitter_0 := fn:data($node_Transmitter_0/@rdf:resource)
    where fn:exists($node_ContinuousWaveRadar_0) and fn:exists($value_Transmitter_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
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
    for $node_QuantityRange_0 in $doc_ObjectDescription
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:about)
    for $node_Transmitter_0 in $node_QuantityRange_0/RFDevice:hasFrequencyRange
    let $value_Transmitter_0 := fn:data($node_Transmitter_0/@rdf:resource)
    where fn:exists($node_QuantityRange_0) and fn:exists($value_Transmitter_0)
    return
      <xqllib:result>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
        <xqllib:var name="Transmitter_0">{$value_Transmitter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_QuantityRange_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#QuantityRange"]
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:about)
    where fn:exists($node_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Angle_0 in $doc_ObjectDescription
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    for $node_QuantityRange_0 in $node_Angle_0/RFDevice:hasMin
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:resource)
    where fn:exists($node_Angle_0) and fn:exists($value_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Angle_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Angle"]
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    where fn:exists($node_Angle_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_LongitudeValueInDegree_0 in $doc_ObjectDescription
    let $value_LongitudeValueInDegree_0 := fn:data($node_LongitudeValueInDegree_0/@rdf:about)
    for $node_Angle_0 in $node_LongitudeValueInDegree_0/Nuvio:hasValue
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:resource)
    where fn:exists($value_Angle_0) and fn:exists($node_LongitudeValueInDegree_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="LongitudeValueInDegree_0">{$value_LongitudeValueInDegree_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_LongitudeValueInDegree_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LongitudeValueInDegree"]
    let $value_LongitudeValueInDegree_0 := fn:data($node_LongitudeValueInDegree_0/@rdf:about)
    where fn:exists($node_LongitudeValueInDegree_0)
    return
      <xqllib:result>
        <xqllib:var name="LongitudeValueInDegree_0">{$value_LongitudeValueInDegree_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("LongitudeValueInDegree_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("Angle_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_5,$GRAPH_10,("Angle_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_4,$GRAPH_11,("QuantityRange_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_3,$GRAPH_12,("QuantityRange_0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_2,$GRAPH_13,("Transmitter_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_1,$GRAPH_14,("Transmitter_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_0,$GRAPH_15,("ContinuousWaveRadar_0"))
  return
    $GRAPH_16
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ContinuousWaveRadar_0"))),("ContinuousWaveRadar_0"))
