import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RadarSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarSystem"]
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    where fn:exists($node_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_RadarSystem_0 in $node_Entity_0/RFDevice:hasGain
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_PhaseModulation_0 in $doc_ObjectDescription
    let $value_PhaseModulation_0 := fn:data($node_PhaseModulation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_PhaseModulation_0) and $node_PhaseModulation_0/Nuvio:subprocessOf/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="PhaseModulation_0">{$value_PhaseModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_PhaseModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PhaseModulation"]
    let $value_PhaseModulation_0 := fn:data($node_PhaseModulation_0/@rdf:about)
    where fn:exists($node_PhaseModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="PhaseModulation_0">{$value_PhaseModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := ($GRAPH_4,$GRAPH_5)
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AntennaPolarization"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_TimeInstant_0 in $doc_ObjectDescription
    let $value_TimeInstant_0 := fn:data($node_TimeInstant_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_TimeInstant_0) and $node_TimeInstant_0/RFDevice:hasMaxPowerConsumption/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="TimeInstant_0">{$value_TimeInstant_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_TimeInstant_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TimeInstant"]
    let $value_TimeInstant_0 := fn:data($node_TimeInstant_0/@rdf:about)
    where fn:exists($node_TimeInstant_0)
    return
      <xqllib:result>
        <xqllib:var name="TimeInstant_0">{$value_TimeInstant_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := ($GRAPH_10,$GRAPH_11)
  let $GRAPH_13 := ($GRAPH_8,$GRAPH_12)
  let $GRAPH_14 := xqllib:and($GRAPH_6,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_2,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_1,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_0,$GRAPH_16,("RadarSystem_0"))
  return
    $GRAPH_17
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
