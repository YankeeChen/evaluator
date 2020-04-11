import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
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
    for $node_SpectrumSensing_0 in $doc_ObjectDescription
    let $value_SpectrumSensing_0 := fn:data($node_SpectrumSensing_0/@rdf:about)
    for $node_Object_0 in $node_SpectrumSensing_0/Nuvio:hasParticipant
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_SpectrumSensing_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="SpectrumSensing_0">{$value_SpectrumSensing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Object_1 in $doc_ObjectDescription
    let $value_Object_1 := fn:data($node_Object_1/@rdf:about)
    for $node_SpectrumSensing_0 in $node_Object_1/RFDevice:hasBandwidthRange
    let $value_SpectrumSensing_0 := fn:data($node_SpectrumSensing_0/@rdf:resource)
    where fn:exists($node_Object_1) and fn:exists($value_SpectrumSensing_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_1">{$value_Object_1}</xqllib:var>
        <xqllib:var name="SpectrumSensing_0">{$value_SpectrumSensing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("SpectrumSensing_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Object_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("JammingSystem_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("JammingSystem_0"))),("JammingSystem_0"))
