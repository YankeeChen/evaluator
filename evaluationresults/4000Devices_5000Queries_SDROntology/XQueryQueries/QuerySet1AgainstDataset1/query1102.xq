import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
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
    for $node_SuperheterodyneReceiver_0 in $doc_ObjectDescription
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:about)
    for $node_ElectronicAttackSystem_0 in $node_SuperheterodyneReceiver_0/Nuvio:partOf
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicAttackSystem_0) and fn:exists($node_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_SuperheterodyneReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SuperheterodyneReceiver"]
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:about)
    where fn:exists($node_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SuperheterodyneReceiver_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    for $node_Entity_0 in $node_Entity_1/Nuvio:isExpressedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Entity_1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiver"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_ParabolicDishAntenna_0 in $doc_ObjectDescription
    let $value_ParabolicDishAntenna_0 := fn:data($node_ParabolicDishAntenna_0/@rdf:about)
    for $node_Entity_0 in $node_ParabolicDishAntenna_0/Nuvio:aggregateOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_ParabolicDishAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="ParabolicDishAntenna_0">{$value_ParabolicDishAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_ParabolicDishAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ParabolicDishAntenna"]
    let $value_ParabolicDishAntenna_0 := fn:data($node_ParabolicDishAntenna_0/@rdf:about)
    where fn:exists($node_ParabolicDishAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="ParabolicDishAntenna_0">{$value_ParabolicDishAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_ParabolicDishAntenna_0 in $node_Var0/RFDevice:supportsTuning
    let $value_ParabolicDishAntenna_0 := fn:data($node_ParabolicDishAntenna_0/@rdf:resource)
    where fn:exists($value_ParabolicDishAntenna_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="ParabolicDishAntenna_0">{$value_ParabolicDishAntenna_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_7,$GRAPH_10,("ParabolicDishAntenna_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_6,$GRAPH_11,("ParabolicDishAntenna_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_5,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CyclostationaryDetection"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DataValue0 in $node_Entity_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := $GRAPH_16[(data(xqllib:var[@name="DataValue0"]) != -1143453936)]
  let $GRAPH_18 := xqllib:and($GRAPH_15,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:optional($GRAPH_14,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_13,$GRAPH_19,("Entity_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_4,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_3,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_2,$GRAPH_22,("SuperheterodyneReceiver_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_1,$GRAPH_23,("SuperheterodyneReceiver_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_0,$GRAPH_24,("ElectronicAttackSystem_0"))
  return
    $GRAPH_25
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicAttackSystem_0"))),("ElectronicAttackSystem_0"))
