import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SurveillanceRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SurveillanceRadar"]
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:about)
    where fn:exists($node_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SurveillanceRadar_0 in $node_Entity_0/RFDevice:isProducerOf
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Entity_0 in $node_InformationEntity_0/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TimeInterval"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
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
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Entity_0"))
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation" and Nuvio:relevantIndividual/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#IEDTrigger_instance148"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_StandoffJamming_0 in $doc_ObjectDescription
    let $value_StandoffJamming_0 := fn:data($node_StandoffJamming_0/@rdf:about)
    for $node_Entity_0 in $node_StandoffJamming_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_StandoffJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="StandoffJamming_0">{$value_StandoffJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_StandoffJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#StandoffJamming"]
    let $value_StandoffJamming_0 := fn:data($node_StandoffJamming_0/@rdf:about)
    where fn:exists($node_StandoffJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="StandoffJamming_0">{$value_StandoffJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    for $node_StandoffJamming_0 in $node_Entity_1/RFDevice:hasPulseRepetitionFrequency
    let $value_StandoffJamming_0 := fn:data($node_StandoffJamming_0/@rdf:resource)
    where fn:exists($node_Entity_1) and fn:exists($value_StandoffJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
        <xqllib:var name="StandoffJamming_0">{$value_StandoffJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := ($GRAPH_11,$GRAPH_12)
  let $GRAPH_14 := xqllib:and($GRAPH_9,$GRAPH_13,("StandoffJamming_0"))
  let $GRAPH_15 := xqllib:optional($GRAPH_8,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := ($GRAPH_7,$GRAPH_15)
  let $GRAPH_17 :=  
    for $node_AngleUnit_0 in $doc_ObjectDescription
    let $value_AngleUnit_0 := fn:data($node_AngleUnit_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_AngleUnit_0) and fn:exists($node_Entity_0) and $node_AngleUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="AngleUnit_0">{$value_AngleUnit_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_AngleUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleUnit"]
    let $value_AngleUnit_0 := fn:data($node_AngleUnit_0/@rdf:about)
    where fn:exists($node_AngleUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleUnit_0">{$value_AngleUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:optional($GRAPH_17,$GRAPH_18,("AngleUnit_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_16,$GRAPH_19,("Entity_0"))
  let $GRAPH_22 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_PositiveIntegerValue_0 in $doc_ObjectDescription
    let $value_PositiveIntegerValue_0 := fn:data($node_PositiveIntegerValue_0/@rdf:about)
    where fn:exists($node_InformationEntity_0) and fn:exists($node_PositiveIntegerValue_0) and $node_PositiveIntegerValue_0/Nuvio:isExpressedBy/@rdf:resource = $value_InformationEntity_0
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="PositiveIntegerValue_0">{$value_PositiveIntegerValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 :=  
    for $node_PositiveIntegerValue_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PositiveIntegerValue"]
    let $value_PositiveIntegerValue_0 := fn:data($node_PositiveIntegerValue_0/@rdf:about)
    where fn:exists($node_PositiveIntegerValue_0)
    return
      <xqllib:result>
        <xqllib:var name="PositiveIntegerValue_0">{$value_PositiveIntegerValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 :=  
    for $node_PositiveIntegerValue_0 in $doc_ObjectDescription
    let $value_PositiveIntegerValue_0 := fn:data($node_PositiveIntegerValue_0/@rdf:about)
    for $node_DataValue0 in $node_PositiveIntegerValue_0/RFDevice:hasIntegerValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_PositiveIntegerValue_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="PositiveIntegerValue_0">{$value_PositiveIntegerValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_25 := $GRAPH_24[(data(xqllib:var[@name="DataValue0"]) < 552252233)]
  let $GRAPH_26 := xqllib:and($GRAPH_23,$GRAPH_25,("PositiveIntegerValue_0"))
  let $GRAPH_27 := ($GRAPH_22,$GRAPH_26)
  let $GRAPH_28 := xqllib:optional($GRAPH_20,$GRAPH_27,())
  let $GRAPH_29 := ($GRAPH_3,$GRAPH_28)
  let $GRAPH_30 := xqllib:and($GRAPH_1,$GRAPH_29,("Entity_0"))
  let $GRAPH_31 := xqllib:and($GRAPH_0,$GRAPH_30,("SurveillanceRadar_0"))
  return
    $GRAPH_31
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SurveillanceRadar_0"))),("SurveillanceRadar_0"))
