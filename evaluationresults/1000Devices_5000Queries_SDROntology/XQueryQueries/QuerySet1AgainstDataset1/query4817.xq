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
    for $node_GNURadio_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#GNURadio"]
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:about)
    where fn:exists($node_GNURadio_0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_GNURadio_0 in $node_Var0/RFDevice:supportsTuning
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:resource)
    where fn:exists($value_GNURadio_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0) and $node_Var0/Nuvio:isExpressedBy/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Instance381"]/Nuvio:hasProcessQuantity
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Width"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
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
  let $GRAPH_7 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_SpatialVolumeUnit_0 in $node_Var1/Nuvio:hasUnitOfMeasure
    let $value_SpatialVolumeUnit_0 := fn:data($node_SpatialVolumeUnit_0/@rdf:resource)
    where fn:exists($value_SpatialVolumeUnit_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="SpatialVolumeUnit_0">{$value_SpatialVolumeUnit_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
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
  let $GRAPH_9 := $GRAPH_8[(data(xqllib:var[@name="DataValue0"]) > 622132331)]
  let $GRAPH_10 :=  
    for $node_SpatialVolumeUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpatialVolumeUnit"]
    let $value_SpatialVolumeUnit_0 := fn:data($node_SpatialVolumeUnit_0/@rdf:about)
    where fn:exists($node_SpatialVolumeUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="SpatialVolumeUnit_0">{$value_SpatialVolumeUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,())
  let $GRAPH_12 := xqllib:optional($GRAPH_7,$GRAPH_11,("SpatialVolumeUnit_0","Var1"))
  let $GRAPH_13 := xqllib:and($GRAPH_6,$GRAPH_12,("Var1"))
  let $GRAPH_14 := ($GRAPH_5,$GRAPH_13)
  let $GRAPH_15 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    where fn:exists($node_Var0) and fn:exists($node_Var2) and $node_Var2/Nuvio:informationSource/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Var2 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveJamming"]
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    where fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_Var2 in $node_Power_0/RFDevice:hasTransmitPowerRange
    let $value_Var2 := fn:data($node_Var2/@rdf:resource)
    where fn:exists($node_Power_0) and fn:exists($value_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_Power_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Power"]
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    where fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:and($GRAPH_17,$GRAPH_18,("Power_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_16,$GRAPH_19,("Var2"))
  let $GRAPH_21 := xqllib:and($GRAPH_15,$GRAPH_20,("Var2"))
  let $GRAPH_22 := xqllib:and($GRAPH_14,$GRAPH_21,("Var0"))
  let $GRAPH_23 := xqllib:and($GRAPH_3,$GRAPH_22,("Var0"))
  let $GRAPH_24 := xqllib:and($GRAPH_2,$GRAPH_23,("Var0"))
  let $GRAPH_25 :=  
    for $node_FreqencyRange_0 in $doc_ObjectDescription
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:about)
    for $node_Var0 in $node_FreqencyRange_0/RFDevice:hasBandwidthRange
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_FreqencyRange_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_26 :=  
    for $node_FreqencyRange_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Frequency_instance49"]/RFDevice:hasMax
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:resource)
    where fn:exists($value_FreqencyRange_0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_27 := xqllib:and($GRAPH_25,$GRAPH_26,("FreqencyRange_0"))
  let $GRAPH_28 := xqllib:and($GRAPH_24,$GRAPH_27,("Var0"))
  let $GRAPH_29 := xqllib:and($GRAPH_1,$GRAPH_28,("Var0"))
  let $GRAPH_30 := xqllib:optional($GRAPH_0,$GRAPH_29,("GNURadio_0"))
  return
    $GRAPH_30
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("GNURadio_0"))),("GNURadio_0"))
