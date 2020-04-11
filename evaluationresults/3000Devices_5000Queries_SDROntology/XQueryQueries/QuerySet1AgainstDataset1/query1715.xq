import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace skos = "http://www.w3.org/2004/02/skos/core#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_BistaticRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BistaticRadar"]
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:about)
    where fn:exists($node_BistaticRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_BistaticRadar_0 in $node_Var0/RFDevice:supportsTuning
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:resource)
    where fn:exists($value_BistaticRadar_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
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
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InverseGainJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0) and $node_Var0/RFDevice:hasMaxOutputPower/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := ($GRAPH_4,$GRAPH_5)
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpatialVolumeUnit"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Var0"))
  let $GRAPH_10 :=  
    for $node_PhaseModulation_0 in $doc_ObjectDescription
    let $value_PhaseModulation_0 := fn:data($node_PhaseModulation_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_PhaseModulation_0) and fn:exists($node_Var0) and $node_PhaseModulation_0/Nuvio:hasSubprocess/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="PhaseModulation_0">{$value_PhaseModulation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_PhaseModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PhaseModulation"]
    let $value_PhaseModulation_0 := fn:data($node_PhaseModulation_0/@rdf:about)
    where fn:exists($node_PhaseModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="PhaseModulation_0">{$value_PhaseModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("PhaseModulation_0"))
  let $GRAPH_13 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_Var0 in $node_Situation_0/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Situation_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_BlinkingJamming_0 in $doc_ObjectDescription
    let $value_BlinkingJamming_0 := fn:data($node_BlinkingJamming_0/@rdf:about)
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_BlinkingJamming_0) and fn:exists($node_Situation_0) and $node_BlinkingJamming_0/Nuvio:relevantIndividual/@rdf:resource = $value_Situation_0
    return
      <xqllib:result>
        <xqllib:var name="BlinkingJamming_0">{$value_BlinkingJamming_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_ConceptScheme_0 in $doc_ObjectDescription
    let $value_ConceptScheme_0 := fn:data($node_ConceptScheme_0/@rdf:about)
    for $node_Situation_0 in $node_ConceptScheme_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_ConceptScheme_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="ConceptScheme_0">{$value_ConceptScheme_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_ConceptScheme_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.w3.org/2004/02/skos/core#ConceptScheme"]
    let $value_ConceptScheme_0 := fn:data($node_ConceptScheme_0/@rdf:about)
    for $node_Collection_0 in $node_ConceptScheme_0/skos:topConceptOf
    let $value_Collection_0 := fn:data($node_Collection_0/@rdf:resource)
    where fn:exists($value_Collection_0) and fn:exists($node_ConceptScheme_0)
    return
      <xqllib:result>
        <xqllib:var name="Collection_0">{$value_Collection_0}</xqllib:var>
        <xqllib:var name="ConceptScheme_0">{$value_ConceptScheme_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_Collection_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.w3.org/2004/02/skos/core#Collection"]
    let $value_Collection_0 := fn:data($node_Collection_0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Collection_0) and fn:exists($node_Var1) and $node_Var1/skos:member/@rdf:resource = $value_Collection_0
    return
      <xqllib:result>
        <xqllib:var name="Collection_0">{$value_Collection_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.w3.org/2004/02/skos/core#Concept"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:and($GRAPH_17,$GRAPH_18,("Var1"))
  let $GRAPH_20 := xqllib:and($GRAPH_16,$GRAPH_19,("Collection_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_15,$GRAPH_20,("ConceptScheme_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_14,$GRAPH_21,("Situation_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_13,$GRAPH_22,("Situation_0"))
  let $GRAPH_24 := ($GRAPH_12,$GRAPH_23)
  let $GRAPH_25 := xqllib:and($GRAPH_8,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_2,$GRAPH_25,("Var0"))
  let $GRAPH_27 := xqllib:and($GRAPH_1,$GRAPH_26,("Var0"))
  let $GRAPH_28 := xqllib:optional($GRAPH_0,$GRAPH_27,("BistaticRadar_0"))
  return
    $GRAPH_28
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("BistaticRadar_0"))),("BistaticRadar_0"))
