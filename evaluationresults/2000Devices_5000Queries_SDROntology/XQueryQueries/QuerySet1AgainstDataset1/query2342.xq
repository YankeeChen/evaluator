import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB210_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB210"]
    let $value_USRPB210_0 := fn:data($node_USRPB210_0/@rdf:about)
    where fn:exists($node_USRPB210_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB210_0">{$value_USRPB210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Submarine_0 in $doc_ObjectDescription
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:about)
    for $node_USRPB210_0 in $node_Submarine_0/RFDevice:isDeployedOn
    let $value_USRPB210_0 := fn:data($node_USRPB210_0/@rdf:resource)
    where fn:exists($node_Submarine_0) and fn:exists($value_USRPB210_0)
    return
      <xqllib:result>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
        <xqllib:var name="USRPB210_0">{$value_USRPB210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Submarine_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Submarine"]
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:about)
    where fn:exists($node_Submarine_0)
    return
      <xqllib:result>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Submarine_0 in $node_Entity_0/RFDevice:supportsSpectrumSensing
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Submarine_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
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
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SearchRadar_0 in $doc_ObjectDescription
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_SearchRadar_0) and $node_SearchRadar_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_SearchRadar_0 in $node_Object_0/RFDevice:hasProducer
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:optional($GRAPH_7,$GRAPH_8,("SearchRadar_0"))
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Frequency"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/Nuvio:hasValue
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue0 in $node_Var0/RFDevice:hasDoubleValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Var0"))
  let $GRAPH_15 := xqllib:and($GRAPH_11,$GRAPH_14,("Var0"))
  let $GRAPH_16 := xqllib:and($GRAPH_10,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := xqllib:and($GRAPH_16,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := ($GRAPH_9,$GRAPH_18)
  let $GRAPH_21 :=  
    for $node_FormationJamming_0 in $doc_ObjectDescription
    let $value_FormationJamming_0 := fn:data($node_FormationJamming_0/@rdf:about)
    for $node_InformationEntity_0 in $node_FormationJamming_0/Nuvio:isExpressedBy
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:resource)
    where fn:exists($node_FormationJamming_0) and fn:exists($value_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="FormationJamming_0">{$value_FormationJamming_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 :=  
    for $node_FormationJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FormationJamming"]
    let $value_FormationJamming_0 := fn:data($node_FormationJamming_0/@rdf:about)
    where fn:exists($node_FormationJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="FormationJamming_0">{$value_FormationJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 := ($GRAPH_21,$GRAPH_22)
  let $GRAPH_24 := xqllib:and($GRAPH_19,$GRAPH_23,())
  let $GRAPH_25 := xqllib:and($GRAPH_5,$GRAPH_24,("Entity_0","InformationEntity_0"))
  let $GRAPH_26 := xqllib:and($GRAPH_4,$GRAPH_25,("Entity_0"))
  let $GRAPH_27 := ($GRAPH_3,$GRAPH_26)
  let $GRAPH_28 := xqllib:and($GRAPH_1,$GRAPH_27,("Submarine_0"))
  let $GRAPH_29 := xqllib:and($GRAPH_0,$GRAPH_28,("USRPB210_0"))
  return
    $GRAPH_29
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB210_0"))),("USRPB210_0"))
