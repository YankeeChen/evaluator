import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_Full_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Full-DuplexCommunicationsSystem"]
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Full_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Weight_0 in $doc_ObjectDescription
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:about)
    for $node_Full_DuplexCommunicationsSystem_0 in $node_Weight_0/RFDevice:hasMaxPowerConsumption
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_Full_DuplexCommunicationsSystem_0) and fn:exists($node_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Weight_0 in $node_Var0/Nuvio:hasValue
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:resource)
    where fn:exists($node_Var0) and fn:exists($value_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Var0 in $node_InformationEntity_0/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_InformationEntity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue0 in $node_Var0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := $GRAPH_5[(data(xqllib:var[@name="DataValue0"]) > -2136793419)]
  let $GRAPH_7 := xqllib:and($GRAPH_4,$GRAPH_6,("Var0"))
  let $GRAPH_8 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_InformationEntity_0 in $node_Var1/Nuvio:informationSource
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:resource)
    where fn:exists($value_InformationEntity_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SoftwareComponent"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Var1"))
  let $GRAPH_11 := ($GRAPH_7,$GRAPH_10)
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_Entity_0 in $node_Process_0/Nuvio:isExpressedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#Ring"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#DimensionlessUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Voltage"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var2 in $node_Entity_0/Nuvio:hasValue
    let $value_Var2 := fn:data($node_Var2/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:and($GRAPH_17,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := xqllib:optional($GRAPH_16,$GRAPH_19,("Entity_0"))
  let $GRAPH_21 := xqllib:optional($GRAPH_15,$GRAPH_20,("Entity_0"))
  let $GRAPH_23 :=  
    for $node_Gain_0 in $doc_ObjectDescription
    let $value_Gain_0 := fn:data($node_Gain_0/@rdf:about)
    for $node_Process_0 in $node_Gain_0/RFDevice:hasPulseRepetitionInterval
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($node_Gain_0) and fn:exists($value_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="Gain_0">{$value_Gain_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 :=  
    for $node_Gain_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Gain"]
    let $value_Gain_0 := fn:data($node_Gain_0/@rdf:about)
    where fn:exists($node_Gain_0)
    return
      <xqllib:result>
        <xqllib:var name="Gain_0">{$value_Gain_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_25 :=  
    for $node_Gain_0 in $doc_ObjectDescription
    let $value_Gain_0 := fn:data($node_Gain_0/@rdf:about)
    for $node_Var3 in $node_Gain_0/Nuvio:hasValue
    let $value_Var3 := fn:data($node_Var3/@rdf:resource)
    where fn:exists($node_Gain_0) and fn:exists($value_Var3)
    return
      <xqllib:result>
        <xqllib:var name="Gain_0">{$value_Gain_0}</xqllib:var>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_26 :=  
    for $node_Var3 in $doc_ObjectDescription
    let $value_Var3 := fn:data($node_Var3/@rdf:about)
    for $node_DataValue1 in $node_Var3/Nuvio:hasPrecision
    let $value_DataValue1 := fn:data($node_DataValue1)
    where fn:exists($value_DataValue1) and fn:exists($node_Var3)
    return
      <xqllib:result>
        <xqllib:var name="DataValue1">{$value_DataValue1}</xqllib:var>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_27 := $GRAPH_26[(data(xqllib:var[@name="DataValue1"]) >= 1036979919)]
  let $GRAPH_28 := xqllib:and($GRAPH_25,$GRAPH_27,("Var3"))
  let $GRAPH_29 := xqllib:and($GRAPH_24,$GRAPH_28,("Gain_0"))
  let $GRAPH_30 := ($GRAPH_23,$GRAPH_29)
  let $GRAPH_31 := xqllib:and($GRAPH_21,$GRAPH_30,())
  let $GRAPH_32 := ($GRAPH_14,$GRAPH_31)
  let $GRAPH_33 := xqllib:and($GRAPH_12,$GRAPH_32,("Entity_0"))
  let $GRAPH_34 := xqllib:and($GRAPH_11,$GRAPH_33,("Var0"))
  let $GRAPH_35 := xqllib:and($GRAPH_2,$GRAPH_34,("Var0"))
  let $GRAPH_36 := xqllib:and($GRAPH_1,$GRAPH_35,("Weight_0"))
  let $GRAPH_37 := xqllib:and($GRAPH_0,$GRAPH_36,("Full_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_37
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Full_DuplexCommunicationsSystem_0"))),("Full_DuplexCommunicationsSystem_0"))
