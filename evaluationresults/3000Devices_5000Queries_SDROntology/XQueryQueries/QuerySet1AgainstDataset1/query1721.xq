import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace sf = "http://www.opengis.net/ont/sf#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_GNURadio_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#GNURadio"]
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:about)
    where fn:exists($node_GNURadio_0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_GNURadio_0 in $doc_ObjectDescription
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:about)
    for $node_Var0 in $node_GNURadio_0/RFDevice:supportsSpectrumSensing
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_GNURadio_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Quantity_0 in $node_Var0/RFDevice:hasEffectiveRadiatedPower
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:resource)
    where fn:exists($value_Quantity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_UnitOfMeasure_0 in $doc_ObjectDescription
    let $value_UnitOfMeasure_0 := fn:data($node_UnitOfMeasure_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_UnitOfMeasure_0) and fn:exists($node_Var0) and $node_UnitOfMeasure_0/Nuvio:expresses/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="UnitOfMeasure_0">{$value_UnitOfMeasure_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/sf#Line"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_RadarSystem_0 in $doc_ObjectDescription
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    for $node_Var0 in $node_RadarSystem_0/RFDevice:hasTarget
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_RadarSystem_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_RadarSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarSystem"]
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    where fn:exists($node_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Modulation_0 in $doc_ObjectDescription
    let $value_Modulation_0 := fn:data($node_Modulation_0/@rdf:about)
    for $node_RadarSystem_0 in $node_Modulation_0/RFDevice:supportsSpectrumSensing
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:resource)
    where fn:exists($node_Modulation_0) and fn:exists($value_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Modulation_0">{$value_Modulation_0}</xqllib:var>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:optional($GRAPH_8,$GRAPH_9,("RadarSystem_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_7,$GRAPH_10,("RadarSystem_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_6,$GRAPH_11,("Var0"))
  let $GRAPH_13 := xqllib:and($GRAPH_5,$GRAPH_12,("Var0"))
  let $GRAPH_14 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var0) and fn:exists($node_Var1) and $node_Var1/Nuvio:informationSource/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("Var0"))
  let $GRAPH_17 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PositiveDecimalValue"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
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
  let $GRAPH_19 := $GRAPH_18[(data(xqllib:var[@name="DataValue0"]) > -1764385428)]
  let $GRAPH_20 := xqllib:and($GRAPH_17,$GRAPH_19,("Var0"))
  let $GRAPH_21 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 := ($GRAPH_20,$GRAPH_21)
  let $GRAPH_23 := ($GRAPH_15,$GRAPH_22)
  let $GRAPH_24 := xqllib:optional($GRAPH_3,$GRAPH_23,("Var0"))
  let $GRAPH_25 := xqllib:and($GRAPH_2,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_1,$GRAPH_25,("Var0"))
  let $GRAPH_27 := xqllib:and($GRAPH_0,$GRAPH_26,("GNURadio_0"))
  return
    $GRAPH_27
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("GNURadio_0"))),("GNURadio_0"))
