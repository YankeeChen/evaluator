import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ElectronicSupportSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicSupportSystem"]
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:about)
    where fn:exists($node_ElectronicSupportSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_ElectronicSupportSystem_0 in $doc_ObjectDescription
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:about)
    for $node_Object_0 in $node_ElectronicSupportSystem_0/RFDevice:isProducerOf
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_ElectronicSupportSystem_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_Object_0 in $node_Situation_0/Nuvio:participatesIn
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Situation_0 in $doc_ObjectDescription[Nuvio:relevantIndividual/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#IEDJammer_instance68"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_FrequencyShiftKeyingModulation_0 in $doc_ObjectDescription
    let $value_FrequencyShiftKeyingModulation_0 := fn:data($node_FrequencyShiftKeyingModulation_0/@rdf:about)
    for $node_Situation_0 in $node_FrequencyShiftKeyingModulation_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_FrequencyShiftKeyingModulation_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyShiftKeyingModulation_0">{$value_FrequencyShiftKeyingModulation_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_FrequencyShiftKeyingModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyShiftKeyingModulation"]
    let $value_FrequencyShiftKeyingModulation_0 := fn:data($node_FrequencyShiftKeyingModulation_0/@rdf:about)
    where fn:exists($node_FrequencyShiftKeyingModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyShiftKeyingModulation_0">{$value_FrequencyShiftKeyingModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("FrequencyShiftKeyingModulation_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Situation_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Situation_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Object_0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_0,$GRAPH_9,("ElectronicSupportSystem_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicSupportSystem_0"))),("ElectronicSupportSystem_0"))
