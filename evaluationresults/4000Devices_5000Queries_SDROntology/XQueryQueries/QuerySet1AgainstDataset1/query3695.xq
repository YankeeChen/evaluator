import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SDR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#SDR"]
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:about)
    where fn:exists($node_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Weight_0 in $doc_ObjectDescription
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:about)
    for $node_SDR_0 in $node_Weight_0/RFDevice:hasGain
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:resource)
    where fn:exists($value_SDR_0) and fn:exists($node_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Weight_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Weight"]
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:about)
    where fn:exists($node_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
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
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#PolyhedralSurface"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InformationUnit"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Height_0 in $doc_ObjectDescription
    let $value_Height_0 := fn:data($node_Height_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Height_0) and fn:exists($node_Var0) and $node_Height_0/RFDevice:hasLength/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Height_0">{$value_Height_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Height_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Height"]
    let $value_Height_0 := fn:data($node_Height_0/@rdf:about)
    where fn:exists($node_Height_0)
    return
      <xqllib:result>
        <xqllib:var name="Height_0">{$value_Height_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Height_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("Var0"))
  let $GRAPH_11 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/Nuvio:informationSource
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarFrequencyBand"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_SpatialVolumeUnit_0 in $doc_ObjectDescription
    let $value_SpatialVolumeUnit_0 := fn:data($node_SpatialVolumeUnit_0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_SpatialVolumeUnit_0) and fn:exists($node_Var1) and $node_SpatialVolumeUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Var1
    return
      <xqllib:result>
        <xqllib:var name="SpatialVolumeUnit_0">{$value_SpatialVolumeUnit_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_DataValue0 in $node_Var1/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := $GRAPH_15[(data(xqllib:var[@name="DataValue0"]) >= -5113195)]
  let $GRAPH_17 :=  
    for $node_SpatialVolumeUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpatialVolumeUnit"]
    let $value_SpatialVolumeUnit_0 := fn:data($node_SpatialVolumeUnit_0/@rdf:about)
    where fn:exists($node_SpatialVolumeUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="SpatialVolumeUnit_0">{$value_SpatialVolumeUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := xqllib:optional($GRAPH_16,$GRAPH_17,())
  let $GRAPH_19 := ($GRAPH_14,$GRAPH_18)
  let $GRAPH_20 := xqllib:optional($GRAPH_12,$GRAPH_19,("Var1"))
  let $GRAPH_21 := xqllib:and($GRAPH_11,$GRAPH_20,("Var1"))
  let $GRAPH_22 := xqllib:and($GRAPH_10,$GRAPH_21,("Var0"))
  let $GRAPH_23 := xqllib:optional($GRAPH_5,$GRAPH_22,("Var0"))
  let $GRAPH_24 :=  
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
  let $GRAPH_25 := $GRAPH_24[not((data(xqllib:var[@name="DataValue1"]) > xs:double("0.0")))]
  let $GRAPH_26 := ($GRAPH_23,$GRAPH_25)
  let $GRAPH_27 := xqllib:and($GRAPH_3,$GRAPH_26,("Var0"))
  let $GRAPH_28 := xqllib:and($GRAPH_2,$GRAPH_27,("Weight_0"))
  let $GRAPH_29 := xqllib:and($GRAPH_1,$GRAPH_28,("Weight_0"))
  let $GRAPH_30 := xqllib:and($GRAPH_0,$GRAPH_29,("SDR_0"))
  return
    $GRAPH_30
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SDR_0"))),("SDR_0"))
