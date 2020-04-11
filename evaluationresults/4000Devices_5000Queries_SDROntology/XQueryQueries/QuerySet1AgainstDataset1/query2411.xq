import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_JammingSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#JammingSystem"]
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:about)
    where fn:exists($node_JammingSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_JammingSystem_0 in $node_Object_0/RFDevice:isProducerOf
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:resource)
    where fn:exists($value_JammingSystem_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Situation_0 in $node_Object_0/Nuvio:participatesIn
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    for $node_Situation_0 in $node_RadarJammer_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_RadarJammer_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Situation_0 in $doc_ObjectDescription[Nuvio:relevantIndividual/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#InstantaneousFrequencyMeasurementReceiver_instance62"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Object_1 in $doc_ObjectDescription
    let $value_Object_1 := fn:data($node_Object_1/@rdf:about)
    for $node_RadarJammer_0 in $node_Object_1/RFDevice:hasProducer
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:resource)
    where fn:exists($node_Object_1) and fn:exists($value_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_1">{$value_Object_1}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:optional($GRAPH_4,$GRAPH_5,())
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("RadarJammer_0","Situation_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_2,$GRAPH_7,("Situation_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Object_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("JammingSystem_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("JammingSystem_0"))),("JammingSystem_0"))
