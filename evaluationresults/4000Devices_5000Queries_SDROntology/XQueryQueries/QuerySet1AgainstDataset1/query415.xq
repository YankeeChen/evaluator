import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace skos = "http://www.w3.org/2004/02/skos/core#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ElectronicAttackSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicAttackSystem"]
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:about)
    where fn:exists($node_ElectronicAttackSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_ElectronicAttackSystem_0 in $node_Var0/RFDevice:supportsSpectrumSensing
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicAttackSystem_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Instance1747"]/Nuvio:aggregateOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LatitudeValueInRadian"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Var0"))
  let $GRAPH_9 :=  
    for $node_VoltageUnit_0 in $doc_ObjectDescription
    let $value_VoltageUnit_0 := fn:data($node_VoltageUnit_0/@rdf:about)
    for $node_Var0 in $node_VoltageUnit_0/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_VoltageUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="VoltageUnit_0">{$value_VoltageUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_VoltageUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#VoltageUnit"]
    let $value_VoltageUnit_0 := fn:data($node_VoltageUnit_0/@rdf:about)
    where fn:exists($node_VoltageUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="VoltageUnit_0">{$value_VoltageUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("VoltageUnit_0"))
  let $GRAPH_12 := ($GRAPH_8,$GRAPH_11)
  let $GRAPH_13 := ($GRAPH_4,$GRAPH_12)
  let $GRAPH_14 :=  
    for $node_OrderedCollection_0 in $doc_ObjectDescription
    let $value_OrderedCollection_0 := fn:data($node_OrderedCollection_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_OrderedCollection_0) and fn:exists($node_Var0) and $node_OrderedCollection_0/Nuvio:relevantIndividual/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="OrderedCollection_0">{$value_OrderedCollection_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_OrderedCollection_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.w3.org/2004/02/skos/core#OrderedCollection"]
    let $value_OrderedCollection_0 := fn:data($node_OrderedCollection_0/@rdf:about)
    where fn:exists($node_Object_0) and fn:exists($node_OrderedCollection_0) and $node_Object_0/skos:memberList/@rdf:resource = $value_OrderedCollection_0
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="OrderedCollection_0">{$value_OrderedCollection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_RadarModulation_0 in $doc_ObjectDescription
    let $value_RadarModulation_0 := fn:data($node_RadarModulation_0/@rdf:about)
    where fn:exists($node_Object_0) and fn:exists($node_RadarModulation_0) and $node_RadarModulation_0/RFDevice:supportsTuning/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="RadarModulation_0">{$value_RadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_RadarModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarModulation"]
    let $value_RadarModulation_0 := fn:data($node_RadarModulation_0/@rdf:about)
    where fn:exists($node_RadarModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarModulation_0">{$value_RadarModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := xqllib:optional($GRAPH_16,$GRAPH_17,("RadarModulation_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_15,$GRAPH_18,("Object_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_14,$GRAPH_19,("OrderedCollection_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_13,$GRAPH_20,("Var0"))
  let $GRAPH_22 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPN2xx_0 in $node_Var0/Nuvio:expresses
    let $value_USRPN2xx_0 := fn:data($node_USRPN2xx_0/@rdf:resource)
    where fn:exists($value_USRPN2xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN2xx_0">{$value_USRPN2xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 :=  
    for $node_USRPN2xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN2xx"]
    let $value_USRPN2xx_0 := fn:data($node_USRPN2xx_0/@rdf:about)
    where fn:exists($node_USRPN2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN2xx_0">{$value_USRPN2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 := xqllib:and($GRAPH_22,$GRAPH_23,("USRPN2xx_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_21,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_2,$GRAPH_25,("Var0"))
  let $GRAPH_27 := xqllib:and($GRAPH_1,$GRAPH_26,("Var0"))
  let $GRAPH_28 := xqllib:optional($GRAPH_0,$GRAPH_27,("ElectronicAttackSystem_0"))
  return
    $GRAPH_28
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicAttackSystem_0"))),("ElectronicAttackSystem_0"))
