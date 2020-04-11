import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
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
    for $node_RadarSystem_0 in $node_Entity_0/RFDevice:isProducerOf
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    for $node_Entity_0 in $node_Entity_1/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Entity_1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#Surface"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SelfProtectionJamming_0 in $node_Entity_0/Nuvio:relevantIndividual
    let $value_SelfProtectionJamming_0 := fn:data($node_SelfProtectionJamming_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SelfProtectionJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SelfProtectionJamming_0">{$value_SelfProtectionJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_ChokeRingAntenna_0 in $doc_ObjectDescription
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:about)
    for $node_Entity_0 in $node_ChokeRingAntenna_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_ChokeRingAntenna_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_ChokeRingAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ChokeRingAntenna"]
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:about)
    where fn:exists($node_ChokeRingAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_XilinxZynq7000Family_0 in $doc_ObjectDescription
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:about)
    for $node_ChokeRingAntenna_0 in $node_XilinxZynq7000Family_0/Nuvio:aggregateOf
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:resource)
    where fn:exists($value_ChokeRingAntenna_0) and fn:exists($node_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_XilinxZynq7000Family_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XilinxZynq7000Family"]
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:about)
    where fn:exists($node_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_XilinxZynq7000Family_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription3000.owl#Producer_instance189"]/RFDevice:hasProducer
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:resource)
    where fn:exists($value_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("XilinxZynq7000Family_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_9,$GRAPH_12,("XilinxZynq7000Family_0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_8,$GRAPH_13,("ChokeRingAntenna_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_7,$GRAPH_14,("ChokeRingAntenna_0"))
  let $GRAPH_16 :=  
    for $node_SelfProtectionJamming_0 in $doc_ObjectDescription
    let $value_SelfProtectionJamming_0 := fn:data($node_SelfProtectionJamming_0/@rdf:about)
    for $node_Entity_0 in $node_SelfProtectionJamming_0/RFDevice:hasPulseWidth
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_SelfProtectionJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SelfProtectionJamming_0">{$value_SelfProtectionJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := ($GRAPH_15,$GRAPH_16)
  let $GRAPH_18 := ($GRAPH_5,$GRAPH_17)
  let $GRAPH_19 := xqllib:and($GRAPH_3,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_2,$GRAPH_19,("Entity_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_1,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_0,$GRAPH_21,("RadarSystem_0"))
  return
    $GRAPH_22
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
