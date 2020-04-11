import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB2xxmini_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB2xxmini"]
    let $value_USRPB2xxmini_0 := fn:data($node_USRPB2xxmini_0/@rdf:about)
    where fn:exists($node_USRPB2xxmini_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xxmini_0">{$value_USRPB2xxmini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Jammer_0 in $doc_ObjectDescription
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:about)
    for $node_USRPB2xxmini_0 in $node_Jammer_0/Nuvio:aggregateOf
    let $value_USRPB2xxmini_0 := fn:data($node_USRPB2xxmini_0/@rdf:resource)
    where fn:exists($node_Jammer_0) and fn:exists($value_USRPB2xxmini_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
        <xqllib:var name="USRPB2xxmini_0">{$value_USRPB2xxmini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Jammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Jammer"]
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:about)
    where fn:exists($node_Jammer_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Jammer_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Jammer_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Value_0 in $doc_ObjectDescription
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    for $node_Entity_0 in $node_Value_0/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Value_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ModelX"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PhaseModulation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyScanRate"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/Nuvio:hasValue
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue0 in $node_Var0/RFDevice:hasIntegerValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := $GRAPH_10[(data(xqllib:var[@name="DataValue0"]) > 259189975)]
  let $GRAPH_12 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue1 in $node_Var0/Nuvio:hasPrecision
    let $value_DataValue1 := fn:data($node_DataValue1)
    where fn:exists($value_DataValue1) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue1">{$value_DataValue1}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := $GRAPH_12[(data(xqllib:var[@name="DataValue1"]) <= -1830717729)]
  let $GRAPH_14 := xqllib:optional($GRAPH_11,$GRAPH_13,("Var0"))
  let $GRAPH_15 := xqllib:and($GRAPH_9,$GRAPH_14,("Var0"))
  let $GRAPH_16 := ($GRAPH_8,$GRAPH_15)
  let $GRAPH_17 := xqllib:and($GRAPH_6,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_5,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Attribute_0) and fn:exists($node_Entity_0) and $node_Attribute_0/RFDevice:hasLevel/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := xqllib:optional($GRAPH_18,$GRAPH_19,("Entity_0"))
  let $GRAPH_22 :=  
    for $node_PowerUnit_0 in $doc_ObjectDescription
    let $value_PowerUnit_0 := fn:data($node_PowerUnit_0/@rdf:about)
    for $node_Value_0 in $node_PowerUnit_0/Nuvio:hasUnitOfMeasure
    let $value_Value_0 := fn:data($node_Value_0/@rdf:resource)
    where fn:exists($node_PowerUnit_0) and fn:exists($value_Value_0)
    return
      <xqllib:result>
        <xqllib:var name="PowerUnit_0">{$value_PowerUnit_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 :=  
    for $node_PowerUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PowerUnit"]
    let $value_PowerUnit_0 := fn:data($node_PowerUnit_0/@rdf:about)
    where fn:exists($node_PowerUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="PowerUnit_0">{$value_PowerUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 := ($GRAPH_22,$GRAPH_23)
  let $GRAPH_25 := xqllib:and($GRAPH_20,$GRAPH_24,())
  let $GRAPH_26 := xqllib:and($GRAPH_4,$GRAPH_25,("Entity_0","Value_0"))
  let $GRAPH_27 := xqllib:and($GRAPH_3,$GRAPH_26,("Entity_0"))
  let $GRAPH_28 := xqllib:and($GRAPH_2,$GRAPH_27,("Jammer_0"))
  let $GRAPH_29 := xqllib:and($GRAPH_1,$GRAPH_28,("Jammer_0"))
  let $GRAPH_30 := xqllib:optional($GRAPH_0,$GRAPH_29,("USRPB2xxmini_0"))
  return
    $GRAPH_30
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xxmini_0"))),("USRPB2xxmini_0"))
