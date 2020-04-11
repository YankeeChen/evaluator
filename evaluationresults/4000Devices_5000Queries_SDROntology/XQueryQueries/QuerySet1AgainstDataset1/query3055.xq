import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN2xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN2xx"]
    let $value_USRPN2xx_0 := fn:data($node_USRPN2xx_0/@rdf:about)
    where fn:exists($node_USRPN2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN2xx_0">{$value_USRPN2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPN2xx_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_USRPN2xx_0 := fn:data($node_USRPN2xx_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPN2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN2xx_0">{$value_USRPN2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_Entity_0 in $node_Situation_0/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Angle"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_AngleValue_0 in $doc_ObjectDescription
    let $value_AngleValue_0 := fn:data($node_AngleValue_0/@rdf:about)
    for $node_Entity_0 in $node_AngleValue_0/Nuvio:hasValue
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_AngleValue_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleValue_0">{$value_AngleValue_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_AngleValue_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleValue"]
    let $value_AngleValue_0 := fn:data($node_AngleValue_0/@rdf:about)
    where fn:exists($node_AngleValue_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleValue_0">{$value_AngleValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_AngleValue_0 in $doc_ObjectDescription
    let $value_AngleValue_0 := fn:data($node_AngleValue_0/@rdf:about)
    for $node_DataValue0 in $node_AngleValue_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($node_AngleValue_0) and fn:exists($value_DataValue0)
    return
      <xqllib:result>
        <xqllib:var name="AngleValue_0">{$value_AngleValue_0}</xqllib:var>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := $GRAPH_7[(data(xqllib:var[@name="DataValue0"]) > 1428655396)]
  let $GRAPH_9 := xqllib:and($GRAPH_6,$GRAPH_8,("AngleValue_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_5,$GRAPH_9,("AngleValue_0"))
  let $GRAPH_11 := ($GRAPH_4,$GRAPH_10)
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 :=  
    for $node_PhaseModulation_0 in $doc_ObjectDescription
    let $value_PhaseModulation_0 := fn:data($node_PhaseModulation_0/@rdf:about)
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_PhaseModulation_0) and fn:exists($node_Situation_0) and $node_PhaseModulation_0/Nuvio:relevantIndividual/@rdf:resource = $value_Situation_0
    return
      <xqllib:result>
        <xqllib:var name="PhaseModulation_0">{$value_PhaseModulation_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_BlinkingJamming_0 in $doc_ObjectDescription
    let $value_BlinkingJamming_0 := fn:data($node_BlinkingJamming_0/@rdf:about)
    for $node_Situation_0 in $node_BlinkingJamming_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_BlinkingJamming_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="BlinkingJamming_0">{$value_BlinkingJamming_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_BlinkingJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BlinkingJamming"]
    let $value_BlinkingJamming_0 := fn:data($node_BlinkingJamming_0/@rdf:about)
    where fn:exists($node_BlinkingJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="BlinkingJamming_0">{$value_BlinkingJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := xqllib:and($GRAPH_16,$GRAPH_17,("BlinkingJamming_0"))
  let $GRAPH_19 :=  
    for $node_PhaseModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PhaseModulation"]
    let $value_PhaseModulation_0 := fn:data($node_PhaseModulation_0/@rdf:about)
    where fn:exists($node_PhaseModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="PhaseModulation_0">{$value_PhaseModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := ($GRAPH_18,$GRAPH_19)
  let $GRAPH_21 := xqllib:and($GRAPH_14,$GRAPH_20,("PhaseModulation_0","Situation_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_13,$GRAPH_21,())
  let $GRAPH_23 := xqllib:and($GRAPH_2,$GRAPH_22,("Entity_0","Situation_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_1,$GRAPH_23,("Entity_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_0,$GRAPH_24,("USRPN2xx_0"))
  return
    $GRAPH_25
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN2xx_0"))),("USRPN2xx_0"))
