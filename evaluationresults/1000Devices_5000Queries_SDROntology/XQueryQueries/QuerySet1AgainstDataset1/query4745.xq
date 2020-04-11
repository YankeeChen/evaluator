import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
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
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_ElectronicAttackSystem_0 in $node_Var0/RFDevice:hasCapability
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicAttackSystem_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#StandoffJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/RFDevice:hasEffectiveRadiatedPower
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPX310"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var1 in $node_Entity_0/RFDevice:supportsTuning
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var2 in $node_Var1/RFDevice:hasEffectiveRadiatedPower
    let $value_Var2 := fn:data($node_Var2/@rdf:resource)
    where fn:exists($node_Var1) and fn:exists($value_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Var3 in $doc_ObjectDescription
    let $value_Var3 := fn:data($node_Var3/@rdf:about)
    for $node_Var2 in $node_Var3/Nuvio:hasValue
    let $value_Var2 := fn:data($node_Var2/@rdf:resource)
    where fn:exists($value_Var2) and fn:exists($node_Var3)
    return
      <xqllib:result>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Var2"))
  let $GRAPH_10 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiving"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Var1"))
  let $GRAPH_12 := xqllib:and($GRAPH_6,$GRAPH_11,("Var1"))
  let $GRAPH_13 := xqllib:and($GRAPH_5,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:optional($GRAPH_13,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_WeightUnit_0 in $node_Entity_0/Nuvio:hasUnitOfMeasure
    let $value_WeightUnit_0 := fn:data($node_WeightUnit_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_WeightUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="WeightUnit_0">{$value_WeightUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
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
  let $GRAPH_18 := $GRAPH_17[(data(xqllib:var[@name="DataValue0"]) = 1301842147)]
  let $GRAPH_19 :=  
    for $node_WeightUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#WeightUnit"]
    let $value_WeightUnit_0 := fn:data($node_WeightUnit_0/@rdf:about)
    where fn:exists($node_WeightUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="WeightUnit_0">{$value_WeightUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := xqllib:and($GRAPH_18,$GRAPH_19,())
  let $GRAPH_21 := xqllib:and($GRAPH_16,$GRAPH_20,("Entity_0","WeightUnit_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_15,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := xqllib:optional($GRAPH_4,$GRAPH_22,("Entity_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_3,$GRAPH_23,("Entity_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_2,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_1,$GRAPH_25,("Var0"))
  let $GRAPH_27 := xqllib:and($GRAPH_0,$GRAPH_26,("ElectronicAttackSystem_0"))
  return
    $GRAPH_27
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicAttackSystem_0"))),("ElectronicAttackSystem_0"))
