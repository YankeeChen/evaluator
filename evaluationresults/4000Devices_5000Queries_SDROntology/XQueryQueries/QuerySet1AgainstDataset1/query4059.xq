import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
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
    for $node_Satellite_0 in $doc_ObjectDescription
    let $value_Satellite_0 := fn:data($node_Satellite_0/@rdf:about)
    for $node_ContinuousWaveRadar_0 in $node_Satellite_0/RFDevice:isDeployedOn
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:resource)
    where fn:exists($value_ContinuousWaveRadar_0) and fn:exists($node_Satellite_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
        <xqllib:var name="Satellite_0">{$value_Satellite_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_Satellite_0 in $node_Process_0/RFDevice:supportsJamming
    let $value_Satellite_0 := fn:data($node_Satellite_0/@rdf:resource)
    where fn:exists($node_Process_0) and fn:exists($value_Satellite_0)
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="Satellite_0">{$value_Satellite_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_FrequencyShiftKeyingModulation_0 in $doc_ObjectDescription
    let $value_FrequencyShiftKeyingModulation_0 := fn:data($node_FrequencyShiftKeyingModulation_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_FrequencyShiftKeyingModulation_0) and fn:exists($node_Process_0) and $node_FrequencyShiftKeyingModulation_0/Nuvio:hasSubprocess/@rdf:resource = $value_Process_0
    return
      <xqllib:result>
        <xqllib:var name="FrequencyShiftKeyingModulation_0">{$value_FrequencyShiftKeyingModulation_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_FrequencyShiftKeyingModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyShiftKeyingModulation"]
    let $value_FrequencyShiftKeyingModulation_0 := fn:data($node_FrequencyShiftKeyingModulation_0/@rdf:about)
    where fn:exists($node_FrequencyShiftKeyingModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyShiftKeyingModulation_0">{$value_FrequencyShiftKeyingModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:optional($GRAPH_3,$GRAPH_4,("FrequencyShiftKeyingModulation_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Process_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Satellite_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("ContinuousWaveRadar_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ContinuousWaveRadar_0"))),("ContinuousWaveRadar_0"))
