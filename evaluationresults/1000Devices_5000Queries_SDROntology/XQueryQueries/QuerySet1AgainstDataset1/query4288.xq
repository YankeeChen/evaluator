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
    for $node_USRPE310_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE310"]
    let $value_USRPE310_0 := fn:data($node_USRPE310_0/@rdf:about)
    where fn:exists($node_USRPE310_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE310_0">{$value_USRPE310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPE310_0 in $node_Var0/RFDevice:supportsJamming
    let $value_USRPE310_0 := fn:data($node_USRPE310_0/@rdf:resource)
    where fn:exists($value_USRPE310_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE310_0">{$value_USRPE310_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SweepJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/RFDevice:hasTransmitPowerRange
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Object_0 in $node_Entity_0/Nuvio:isExpressedBy
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_PowerUnit_0 in $doc_ObjectDescription
    let $value_PowerUnit_0 := fn:data($node_PowerUnit_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_PowerUnit_0) and $node_PowerUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="PowerUnit_0">{$value_PowerUnit_0}</xqllib:var>
      </xqllib:result>
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
  let $GRAPH_8 := $GRAPH_7[(data(xqllib:var[@name="DataValue0"]) >= 2048939501)]
  let $GRAPH_9 := xqllib:and($GRAPH_6,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_PowerUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PowerUnit"]
    let $value_PowerUnit_0 := fn:data($node_PowerUnit_0/@rdf:about)
    where fn:exists($node_PowerUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="PowerUnit_0">{$value_PowerUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:optional($GRAPH_9,$GRAPH_10,("PowerUnit_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_5,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0) and $doc_ObjectDescription[@rdf:ID = "Instance1401"]/Nuvio:hasSubprocess/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Entity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_4,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 :=  
    for $node_Angle_0 in $doc_ObjectDescription
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_Angle_0) and fn:exists($node_Object_0) and $node_Angle_0/RFDevice:hasHeight/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_Angle_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Angle"]
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    where fn:exists($node_Angle_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_Angle_0 in $doc_ObjectDescription
    let $value_Angle_0 := fn:data($node_Angle_0/@rdf:about)
    for $node_LatitudeValueInRadian_0 in $node_Angle_0/Nuvio:hasValue
    let $value_LatitudeValueInRadian_0 := fn:data($node_LatitudeValueInRadian_0/@rdf:resource)
    where fn:exists($node_Angle_0) and fn:exists($value_LatitudeValueInRadian_0)
    return
      <xqllib:result>
        <xqllib:var name="Angle_0">{$value_Angle_0}</xqllib:var>
        <xqllib:var name="LatitudeValueInRadian_0">{$value_LatitudeValueInRadian_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 :=  
    for $node_LatitudeValueInRadian_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LatitudeValueInRadian"]
    let $value_LatitudeValueInRadian_0 := fn:data($node_LatitudeValueInRadian_0/@rdf:about)
    where fn:exists($node_LatitudeValueInRadian_0)
    return
      <xqllib:result>
        <xqllib:var name="LatitudeValueInRadian_0">{$value_LatitudeValueInRadian_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := xqllib:and($GRAPH_18,$GRAPH_19,("LatitudeValueInRadian_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_17,$GRAPH_20,("Angle_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_16,$GRAPH_21,("Angle_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_15,$GRAPH_22,("Object_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_3,$GRAPH_23,("Entity_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_2,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_1,$GRAPH_25,("Var0"))
  let $GRAPH_27 := xqllib:and($GRAPH_0,$GRAPH_26,("USRPE310_0"))
  return
    $GRAPH_27
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE310_0"))),("USRPE310_0"))
