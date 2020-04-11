import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_CommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CommunicationsSystem"]
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:about)
    where fn:exists($node_CommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_CommunicationsSystem_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_CommunicationsSystem_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Var0 in $node_Object_0/Nuvio:isExpressedBy
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Percentage"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/Nuvio:hasValue
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_DataValue0 in $node_Var1/RFDevice:hasDecimalValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := $GRAPH_6[(data(xqllib:var[@name="DataValue0"]) >= xs:decimal("0"))]
  let $GRAPH_8 := xqllib:and($GRAPH_5,$GRAPH_7,("Var1"))
  let $GRAPH_9 := xqllib:and($GRAPH_4,$GRAPH_8,("Var0"))
  let $GRAPH_10 :=  
    for $node_Object_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Instance5863"]/RFDevice:hasMaxPowerConsumption
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := ($GRAPH_9,$GRAPH_10)
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("Object_0","Var0"))
  let $GRAPH_13 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Instance736"]/RFDevice:hasPulseRepetitionInterval
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_RadioFrequencyBand_0 in $node_Var0/RFDevice:hasFrequencyAccuracy
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:resource)
    where fn:exists($value_RadioFrequencyBand_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_RadioFrequencyBand_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioFrequencyBand"]
    let $value_RadioFrequencyBand_0 := fn:data($node_RadioFrequencyBand_0/@rdf:about)
    where fn:exists($node_RadioFrequencyBand_0)
    return
      <xqllib:result>
        <xqllib:var name="RadioFrequencyBand_0">{$value_RadioFrequencyBand_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := xqllib:and($GRAPH_15,$GRAPH_16,("RadioFrequencyBand_0"))
  let $GRAPH_18 := xqllib:optional($GRAPH_14,$GRAPH_17,("Var0"))
  let $GRAPH_19 := xqllib:and($GRAPH_13,$GRAPH_18,("Var0"))
  let $GRAPH_20 := xqllib:and($GRAPH_12,$GRAPH_19,("Var0"))
  let $GRAPH_21 := xqllib:and($GRAPH_1,$GRAPH_20,("Var0"))
  let $GRAPH_22 := xqllib:and($GRAPH_0,$GRAPH_21,("CommunicationsSystem_0"))
  return
    $GRAPH_22
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CommunicationsSystem_0"))),("CommunicationsSystem_0"))
