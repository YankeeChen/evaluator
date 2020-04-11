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
    for $node_USRPN310_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN310"]
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:about)
    where fn:exists($node_USRPN310_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPN310_0 in $node_Var0/RFDevice:supportsSpectrumSensing
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:resource)
    where fn:exists($value_USRPN310_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_Var0 in $node_Process_0/Nuvio:isExpressedBy
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Process_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InverseGainJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/RFDevice:hasPulseRepetitionInterval
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Var0"))
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0) and $doc_ObjectDescription[@rdf:ID = "WeightUnit_instance6"]/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_InformationRepresentation_0 in $doc_ObjectDescription
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    for $node_Var0 in $node_InformationRepresentation_0/Nuvio:represents
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_InformationRepresentation_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Var0"))
  let $GRAPH_9 := xqllib:optional($GRAPH_5,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("Var0"))
  let $GRAPH_11 :=  
    for $node_FrequencyAccuracy_0 in $doc_ObjectDescription
    let $value_FrequencyAccuracy_0 := fn:data($node_FrequencyAccuracy_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_FrequencyAccuracy_0) and fn:exists($node_Process_0) and $node_FrequencyAccuracy_0/Nuvio:hasProcessQuantity/@rdf:resource = $value_Process_0
    return
      <xqllib:result>
        <xqllib:var name="FrequencyAccuracy_0">{$value_FrequencyAccuracy_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_FrequencyAccuracy_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyAccuracy"]
    let $value_FrequencyAccuracy_0 := fn:data($node_FrequencyAccuracy_0/@rdf:about)
    where fn:exists($node_FrequencyAccuracy_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyAccuracy_0">{$value_FrequencyAccuracy_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_FrequencyAccuracy_0 in $doc_ObjectDescription
    let $value_FrequencyAccuracy_0 := fn:data($node_FrequencyAccuracy_0/@rdf:about)
    for $node_Var1 in $node_FrequencyAccuracy_0/Nuvio:hasValue
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_FrequencyAccuracy_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyAccuracy_0">{$value_FrequencyAccuracy_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PositiveFloatValue"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_DataValue0 in $node_Var1/RFDevice:hasFloatValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := $GRAPH_15[(data(xqllib:var[@name="DataValue0"]) > xs:double("-62.858727"))]
  let $GRAPH_17 := xqllib:and($GRAPH_14,$GRAPH_16,("Var1"))
  let $GRAPH_18 :=  
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    for $node_Var1 in $node_Var2/Nuvio:hasUnitOfMeasure
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($value_Var1) and fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:optional($GRAPH_17,$GRAPH_18,("Var1"))
  let $GRAPH_20 := xqllib:and($GRAPH_13,$GRAPH_19,("Var1"))
  let $GRAPH_21 := xqllib:and($GRAPH_12,$GRAPH_20,("FrequencyAccuracy_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_11,$GRAPH_21,("FrequencyAccuracy_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_10,$GRAPH_22,("Process_0"))
  let $GRAPH_25 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#StandoffJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_26 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Instance104"]/Nuvio:hasProcessQuantity
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_27 := ($GRAPH_25,$GRAPH_26)
  let $GRAPH_28 := xqllib:optional($GRAPH_23,$GRAPH_27,("Var0"))
  let $GRAPH_29 := xqllib:and($GRAPH_1,$GRAPH_28,("Var0"))
  let $GRAPH_30 := xqllib:and($GRAPH_0,$GRAPH_29,("USRPN310_0"))
  return
    $GRAPH_30
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN310_0"))),("USRPN310_0"))
