import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ElectronicAttackSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicAttackSystem"]
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:about)
    where fn:exists($node_ElectronicAttackSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_ElectronicAttackSystem_0 in $node_Entity_0/RFDevice:isDeployedOn
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicAttackSystem_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Entity_1) and $node_Entity_1/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InstantaneousFrequencyMeasurementReceiver"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Moving"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Entity_0"))
  let $GRAPH_8 := ($GRAPH_4,$GRAPH_7)
  let $GRAPH_9 :=  
    for $node_NoiseFigure_0 in $doc_ObjectDescription
    let $value_NoiseFigure_0 := fn:data($node_NoiseFigure_0/@rdf:about)
    for $node_Entity_0 in $node_NoiseFigure_0/RFDevice:hasTransmitPowerRange
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_NoiseFigure_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="NoiseFigure_0">{$value_NoiseFigure_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_2,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_1,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_0,$GRAPH_12,("ElectronicAttackSystem_0"))
  return
    $GRAPH_13
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicAttackSystem_0"))),("ElectronicAttackSystem_0"))
