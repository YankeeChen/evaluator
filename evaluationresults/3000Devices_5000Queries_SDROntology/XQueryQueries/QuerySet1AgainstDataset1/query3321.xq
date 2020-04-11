import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
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
    for $node_Entity_0 in $node_ContinuousWaveRadar_0/RFDevice:hasProducer
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_ContinuousWaveRadar_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CrossEyeJamming"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpatialUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Filter_0 in $node_Entity_0/Nuvio:relevantIndividual
    let $value_Filter_0 := fn:data($node_Filter_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Filter_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Filter_0">{$value_Filter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Filter_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Filter"]
    let $value_Filter_0 := fn:data($node_Filter_0/@rdf:about)
    where fn:exists($node_Filter_0)
    return
      <xqllib:result>
        <xqllib:var name="Filter_0">{$value_Filter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Filter_0 in $doc_ObjectDescription
    let $value_Filter_0 := fn:data($node_Filter_0/@rdf:about)
    for $node_ADC_0 in $node_Filter_0/Nuvio:partOf
    let $value_ADC_0 := fn:data($node_ADC_0/@rdf:resource)
    where fn:exists($value_ADC_0) and fn:exists($node_Filter_0)
    return
      <xqllib:result>
        <xqllib:var name="ADC_0">{$value_ADC_0}</xqllib:var>
        <xqllib:var name="Filter_0">{$value_Filter_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_ADC_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ADC"]
    let $value_ADC_0 := fn:data($node_ADC_0/@rdf:about)
    where fn:exists($node_ADC_0)
    return
      <xqllib:result>
        <xqllib:var name="ADC_0">{$value_ADC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_CortexA9_0 in $doc_ObjectDescription
    let $value_CortexA9_0 := fn:data($node_CortexA9_0/@rdf:about)
    for $node_ADC_0 in $node_CortexA9_0/Nuvio:compositeOf
    let $value_ADC_0 := fn:data($node_ADC_0/@rdf:resource)
    where fn:exists($value_ADC_0) and fn:exists($node_CortexA9_0)
    return
      <xqllib:result>
        <xqllib:var name="ADC_0">{$value_ADC_0}</xqllib:var>
        <xqllib:var name="CortexA9_0">{$value_CortexA9_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_CortexA9_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#CortexA9"]
    let $value_CortexA9_0 := fn:data($node_CortexA9_0/@rdf:about)
    where fn:exists($node_CortexA9_0)
    return
      <xqllib:result>
        <xqllib:var name="CortexA9_0">{$value_CortexA9_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("CortexA9_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_8,$GRAPH_11,("ADC_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_7,$GRAPH_12,("ADC_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_6,$GRAPH_13,("Filter_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_5,$GRAPH_14,("Filter_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_4,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_3,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_2,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_1,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_0,$GRAPH_19,("ContinuousWaveRadar_0"))
  return
    $GRAPH_20
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ContinuousWaveRadar_0"))),("ContinuousWaveRadar_0"))
