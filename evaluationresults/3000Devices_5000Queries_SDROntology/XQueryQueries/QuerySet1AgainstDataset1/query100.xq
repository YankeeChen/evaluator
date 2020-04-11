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
    for $node_USRPX300_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPX300"]
    let $value_USRPX300_0 := fn:data($node_USRPX300_0/@rdf:about)
    where fn:exists($node_USRPX300_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX300_0">{$value_USRPX300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPX300_0 in $node_Var0/RFDevice:supportsJamming
    let $value_USRPX300_0 := fn:data($node_USRPX300_0/@rdf:resource)
    where fn:exists($value_USRPX300_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX300_0">{$value_USRPX300_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Power_0 in $node_Var0/RFDevice:hasMaxSensedPower
    let $value_Power_0 := fn:data($node_Power_0/@rdf:resource)
    where fn:exists($value_Power_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_Var1 in $node_Power_0/Nuvio:hasValue
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Power_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_DataValue0 in $node_Var1/Nuvio:hasDataValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := $GRAPH_5[(data(xqllib:var[@name="DataValue0"]) > -71.34)]
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var1 in $node_Entity_0/Nuvio:hasUnitOfMeasure
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Entity_0 in $node_InformationEntity_0/Nuvio:isExpressedBy
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DigitalModulation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Var2) and $node_Var2/Nuvio:informationSource/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Var3 in $doc_ObjectDescription
    let $value_Var3 := fn:data($node_Var3/@rdf:about)
    for $node_Var2 in $node_Var3/Nuvio:aggregateOf
    let $value_Var2 := fn:data($node_Var2/@rdf:resource)
    where fn:exists($value_Var2) and fn:exists($node_Var3)
    return
      <xqllib:result>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Var3 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription3000.owl#Instance642"]/Nuvio:hasParticipant
    let $value_Var3 := fn:data($node_Var3/@rdf:resource)
    where fn:exists($value_Var3)
    return
      <xqllib:result>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Var4 in $doc_ObjectDescription
    let $value_Var4 := fn:data($node_Var4/@rdf:about)
    for $node_Var3 in $node_Var4/RFDevice:hasHeight
    let $value_Var3 := fn:data($node_Var3/@rdf:resource)
    where fn:exists($value_Var3) and fn:exists($node_Var4)
    return
      <xqllib:result>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
        <xqllib:var name="Var4">{$value_Var4}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:optional($GRAPH_12,$GRAPH_13,("Var3"))
  let $GRAPH_15 :=  
    for $node_Var3 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/SDR.owl#Data_14bit"]/RFDevice:hasResolution
    let $value_Var3 := fn:data($node_Var3/@rdf:resource)
    where fn:exists($value_Var3)
    return
      <xqllib:result>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := xqllib:and($GRAPH_14,$GRAPH_15,("Var3"))
  let $GRAPH_17 := xqllib:and($GRAPH_11,$GRAPH_16,("Var3"))
  let $GRAPH_18 :=  
    for $node_Var2 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#StandoffJamming"]
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    where fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:and($GRAPH_17,$GRAPH_18,("Var2"))
  let $GRAPH_20 := xqllib:and($GRAPH_10,$GRAPH_19,("Var2"))
  let $GRAPH_21 := xqllib:and($GRAPH_9,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_8,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_7,$GRAPH_22,("Entity_0"))
  let $GRAPH_24 := xqllib:optional($GRAPH_6,$GRAPH_23,("Var1"))
  let $GRAPH_25 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_DataValue1 in $node_Var1/RFDevice:hasPositiveIntegerValue
    let $value_DataValue1 := fn:data($node_DataValue1)
    where fn:exists($value_DataValue1) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="DataValue1">{$value_DataValue1}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_26 := $GRAPH_25[(data(xqllib:var[@name="DataValue1"]) <= 22.86)]
  let $GRAPH_27 := xqllib:optional($GRAPH_24,$GRAPH_26,("Var1"))
  let $GRAPH_28 := xqllib:and($GRAPH_4,$GRAPH_27,("Var1"))
  let $GRAPH_29 := xqllib:and($GRAPH_3,$GRAPH_28,("Power_0"))
  let $GRAPH_30 := xqllib:optional($GRAPH_2,$GRAPH_29,("Var0"))
  let $GRAPH_31 := xqllib:and($GRAPH_1,$GRAPH_30,("Var0"))
  let $GRAPH_32 := xqllib:and($GRAPH_0,$GRAPH_31,("USRPX300_0"))
  return
    $GRAPH_32
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX300_0"))),("USRPX300_0"))
