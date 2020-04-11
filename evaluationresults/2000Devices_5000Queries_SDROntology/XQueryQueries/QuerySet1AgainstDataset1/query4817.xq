import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
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
    for $node_Jammer_0 in $doc_ObjectDescription
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:about)
    for $node_RadarSystem_0 in $node_Jammer_0/Nuvio:compositeOf
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:resource)
    where fn:exists($node_Jammer_0) and fn:exists($value_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_PhasedArrayAntenna_0 in $doc_ObjectDescription
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:about)
    for $node_Jammer_0 in $node_PhasedArrayAntenna_0/Nuvio:aggregateOf
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:resource)
    where fn:exists($value_Jammer_0) and fn:exists($node_PhasedArrayAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_PhasedArrayAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PhasedArrayAntenna"]
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:about)
    where fn:exists($node_PhasedArrayAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_AntennaPolarization_0 in $doc_ObjectDescription
    let $value_AntennaPolarization_0 := fn:data($node_AntennaPolarization_0/@rdf:about)
    for $node_PhasedArrayAntenna_0 in $node_AntennaPolarization_0/Nuvio:hasObjectQuality
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:resource)
    where fn:exists($node_AntennaPolarization_0) and fn:exists($value_PhasedArrayAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="AntennaPolarization_0">{$value_AntennaPolarization_0}</xqllib:var>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Quality_0 in $doc_ObjectDescription
    let $value_Quality_0 := fn:data($node_Quality_0/@rdf:about)
    for $node_PhasedArrayAntenna_0 in $node_Quality_0/RFDevice:hasPolarization
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:resource)
    where fn:exists($value_PhasedArrayAntenna_0) and fn:exists($node_Quality_0)
    return
      <xqllib:result>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
        <xqllib:var name="Quality_0">{$value_Quality_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Quality_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quality"]
    let $value_Quality_0 := fn:data($node_Quality_0/@rdf:about)
    where fn:exists($node_Quality_0)
    return
      <xqllib:result>
        <xqllib:var name="Quality_0">{$value_Quality_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Quality_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("PhasedArrayAntenna_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("PhasedArrayAntenna_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("PhasedArrayAntenna_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Jammer_0"))
  let $GRAPH_12 := xqllib:optional($GRAPH_0,$GRAPH_11,("RadarSystem_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
