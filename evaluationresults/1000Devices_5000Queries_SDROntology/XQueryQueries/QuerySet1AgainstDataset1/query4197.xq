import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_Half_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Half-DuplexCommunicationsSystem"]
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Half_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Half_DuplexCommunicationsSystem_0 in $doc_ObjectDescription
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:about)
    for $node_Entity_0 in $node_Half_DuplexCommunicationsSystem_0/RFDevice:hasProducer
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Half_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
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
    for $node_PhaseShiftKeyingModulation_0 in $doc_ObjectDescription
    let $value_PhaseShiftKeyingModulation_0 := fn:data($node_PhaseShiftKeyingModulation_0/@rdf:about)
    for $node_Entity_0 in $node_PhaseShiftKeyingModulation_0/RFDevice:hasCapability
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_PhaseShiftKeyingModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="PhaseShiftKeyingModulation_0">{$value_PhaseShiftKeyingModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_PhaseShiftKeyingModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PhaseShiftKeyingModulation"]
    let $value_PhaseShiftKeyingModulation_0 := fn:data($node_PhaseShiftKeyingModulation_0/@rdf:about)
    where fn:exists($node_PhaseShiftKeyingModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="PhaseShiftKeyingModulation_0">{$value_PhaseShiftKeyingModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("PhaseShiftKeyingModulation_0"))
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Composite_0 in $node_Entity_0/Nuvio:expresses
    let $value_Composite_0 := fn:data($node_Composite_0/@rdf:resource)
    where fn:exists($value_Composite_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Composite_0">{$value_Composite_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Composite_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#Composite"]
    let $value_Composite_0 := fn:data($node_Composite_0/@rdf:about)
    where fn:exists($node_Composite_0)
    return
      <xqllib:result>
        <xqllib:var name="Composite_0">{$value_Composite_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:optional($GRAPH_6,$GRAPH_7,("Composite_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("Half_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Half_DuplexCommunicationsSystem_0"))),("Half_DuplexCommunicationsSystem_0"))
