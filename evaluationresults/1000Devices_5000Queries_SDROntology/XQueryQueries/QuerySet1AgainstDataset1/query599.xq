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
    for $node_USRPN300_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN300"]
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:about)
    where fn:exists($node_USRPN300_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPN300_0 in $node_Entity_0/RFDevice:hasMaxPowerConsumption
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPN300_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Jamming_0 in $doc_ObjectDescription
    let $value_Jamming_0 := fn:data($node_Jamming_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Jamming_0) and $node_Jamming_0/Nuvio:participatesIn/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Jamming_0">{$value_Jamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Jamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Jamming"]
    let $value_Jamming_0 := fn:data($node_Jamming_0/@rdf:about)
    where fn:exists($node_Jamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Jamming_0">{$value_Jamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Jamming_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/SDR.owl#Power_15dBm"]/RFDevice:hasEffectiveRadiatedPower
    let $value_Jamming_0 := fn:data($node_Jamming_0/@rdf:resource)
    where fn:exists($value_Jamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Jamming_0">{$value_Jamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Jamming_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Jamming_0"))
  let $GRAPH_7 :=  
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
  let $GRAPH_8 := $GRAPH_7[(data(xqllib:var[@name="DataValue0"]) <= 698800635)]
  let $GRAPH_9 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyScanRate"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
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
  let $GRAPH_11 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue1 in $node_Var0/RFDevice:hasFloatValue
    let $value_DataValue1 := fn:data($node_DataValue1)
    where fn:exists($value_DataValue1) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue1">{$value_DataValue1}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := $GRAPH_11[(data(xqllib:var[@name="DataValue1"]) = 1479905189)]
  let $GRAPH_13 := xqllib:and($GRAPH_10,$GRAPH_12,("Var0"))
  let $GRAPH_14 := xqllib:and($GRAPH_9,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_8,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_LatitudeValueInDegree_0 in $node_Entity_0/Nuvio:relevantIndividual
    let $value_LatitudeValueInDegree_0 := fn:data($node_LatitudeValueInDegree_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_LatitudeValueInDegree_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="LatitudeValueInDegree_0">{$value_LatitudeValueInDegree_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_LatitudeValueInDegree_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LatitudeValueInDegree"]
    let $value_LatitudeValueInDegree_0 := fn:data($node_LatitudeValueInDegree_0/@rdf:about)
    where fn:exists($node_LatitudeValueInDegree_0)
    return
      <xqllib:result>
        <xqllib:var name="LatitudeValueInDegree_0">{$value_LatitudeValueInDegree_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_LatitudeValueInDegree_0 in $doc_ObjectDescription
    let $value_LatitudeValueInDegree_0 := fn:data($node_LatitudeValueInDegree_0/@rdf:about)
    for $node_DataValue2 in $node_LatitudeValueInDegree_0/RFDevice:hasFloatValue
    let $value_DataValue2 := fn:data($node_DataValue2)
    where fn:exists($value_DataValue2) and fn:exists($node_LatitudeValueInDegree_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue2">{$value_DataValue2}</xqllib:var>
        <xqllib:var name="LatitudeValueInDegree_0">{$value_LatitudeValueInDegree_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:and($GRAPH_17,$GRAPH_18,("LatitudeValueInDegree_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_16,$GRAPH_19,("LatitudeValueInDegree_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_15,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_6,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_1,$GRAPH_22,("Entity_0"))
  let $GRAPH_24 := xqllib:optional($GRAPH_0,$GRAPH_23,("USRPN300_0"))
  return
    $GRAPH_24
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN300_0"))),("USRPN300_0"))
