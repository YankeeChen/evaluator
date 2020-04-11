import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SearchRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SearchRadar"]
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    where fn:exists($node_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_PulseRadarModulation_0 in $doc_ObjectDescription
    let $value_PulseRadarModulation_0 := fn:data($node_PulseRadarModulation_0/@rdf:about)
    for $node_SearchRadar_0 in $node_PulseRadarModulation_0/RFDevice:supportsTransmitting
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:resource)
    where fn:exists($node_PulseRadarModulation_0) and fn:exists($value_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadarModulation_0">{$value_PulseRadarModulation_0}</xqllib:var>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_PulseRadarModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseRadarModulation"]
    let $value_PulseRadarModulation_0 := fn:data($node_PulseRadarModulation_0/@rdf:about)
    where fn:exists($node_PulseRadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadarModulation_0">{$value_PulseRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Frequency_0 in $doc_ObjectDescription
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:about)
    for $node_PulseRadarModulation_0 in $node_Frequency_0/RFDevice:hasPulseWidth
    let $value_PulseRadarModulation_0 := fn:data($node_PulseRadarModulation_0/@rdf:resource)
    where fn:exists($node_Frequency_0) and fn:exists($value_PulseRadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
        <xqllib:var name="PulseRadarModulation_0">{$value_PulseRadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Frequency_0 in $node_Var0/Nuvio:hasValue
    let $value_Frequency_0 := fn:data($node_Frequency_0/@rdf:resource)
    where fn:exists($value_Frequency_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Frequency_0">{$value_Frequency_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#FrequencyUnit_instance22"]/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue0 in $node_Var0/RFDevice:hasFloatValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue1 in $node_Var0/RFDevice:hasDecimalValue
    let $value_DataValue1 := fn:data($node_DataValue1)
    where fn:exists($value_DataValue1) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue1">{$value_DataValue1}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := $GRAPH_7[(data(xqllib:var[@name="DataValue1"]) != -55.54)]
  let $GRAPH_9 := xqllib:and($GRAPH_6,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_5,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_4,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:and($GRAPH_3,$GRAPH_11,("Frequency_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_2,$GRAPH_12,("PulseRadarModulation_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_1,$GRAPH_13,("PulseRadarModulation_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_0,$GRAPH_14,("SearchRadar_0"))
  return
    $GRAPH_15
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SearchRadar_0"))),("SearchRadar_0"))
