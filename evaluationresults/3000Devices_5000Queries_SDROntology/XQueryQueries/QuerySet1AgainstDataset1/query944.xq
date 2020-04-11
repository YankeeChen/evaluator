import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_MonostaticRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#MonostaticRadar"]
    let $value_MonostaticRadar_0 := fn:data($node_MonostaticRadar_0/@rdf:about)
    where fn:exists($node_MonostaticRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="MonostaticRadar_0">{$value_MonostaticRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_IEDJammer_0 in $doc_ObjectDescription
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    for $node_MonostaticRadar_0 in $node_IEDJammer_0/Nuvio:partOf
    let $value_MonostaticRadar_0 := fn:data($node_MonostaticRadar_0/@rdf:resource)
    where fn:exists($node_IEDJammer_0) and fn:exists($value_MonostaticRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="MonostaticRadar_0">{$value_MonostaticRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_IEDJammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IEDJammer"]
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    where fn:exists($node_IEDJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_ParabolicDishAntenna_0 in $doc_ObjectDescription
    let $value_ParabolicDishAntenna_0 := fn:data($node_ParabolicDishAntenna_0/@rdf:about)
    for $node_IEDJammer_0 in $node_ParabolicDishAntenna_0/Nuvio:partOf
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:resource)
    where fn:exists($value_IEDJammer_0) and fn:exists($node_ParabolicDishAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="ParabolicDishAntenna_0">{$value_ParabolicDishAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_ParabolicDishAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ParabolicDishAntenna"]
    let $value_ParabolicDishAntenna_0 := fn:data($node_ParabolicDishAntenna_0/@rdf:about)
    where fn:exists($node_ParabolicDishAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="ParabolicDishAntenna_0">{$value_ParabolicDishAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
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
  let $GRAPH_8 :=  
    for $node_NoiseJamming_0 in $doc_ObjectDescription
    let $value_NoiseJamming_0 := fn:data($node_NoiseJamming_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_NoiseJamming_0) and fn:exists($node_Var0) and $node_NoiseJamming_0/Nuvio:hasSubprocess/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="NoiseJamming_0">{$value_NoiseJamming_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_NoiseJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NoiseJamming"]
    let $value_NoiseJamming_0 := fn:data($node_NoiseJamming_0/@rdf:about)
    where fn:exists($node_NoiseJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseJamming_0">{$value_NoiseJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := ($GRAPH_8,$GRAPH_9)
  let $GRAPH_11 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#StandoffJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription3000.owl#Power_instance47"]/RFDevice:hasEffectiveRadiatedPower
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:optional($GRAPH_11,$GRAPH_12,("Var0"))
  let $GRAPH_14 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0) and $node_Var0/Nuvio:isExpressedBy/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/Nuvio:informationSource
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FeatureDetection"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := xqllib:and($GRAPH_15,$GRAPH_16,("Var1"))
  let $GRAPH_18 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:and($GRAPH_17,$GRAPH_18,("Var0"))
  let $GRAPH_20 := xqllib:and($GRAPH_14,$GRAPH_19,("Var0"))
  let $GRAPH_21 := xqllib:optional($GRAPH_13,$GRAPH_20,("Var0"))
  let $GRAPH_22 := ($GRAPH_10,$GRAPH_21)
  let $GRAPH_23 := xqllib:and($GRAPH_5,$GRAPH_22,("Var0"))
  let $GRAPH_24 := xqllib:optional($GRAPH_4,$GRAPH_23,("ParabolicDishAntenna_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_3,$GRAPH_24,("ParabolicDishAntenna_0"))
  let $GRAPH_26 := xqllib:and($GRAPH_2,$GRAPH_25,("IEDJammer_0"))
  let $GRAPH_27 := xqllib:and($GRAPH_1,$GRAPH_26,("IEDJammer_0"))
  let $GRAPH_28 := xqllib:and($GRAPH_0,$GRAPH_27,("MonostaticRadar_0"))
  return
    $GRAPH_28
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("MonostaticRadar_0"))),("MonostaticRadar_0"))
