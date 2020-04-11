import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SearchRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SearchRadar"]
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    where fn:exists($node_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SearchRadar_0 in $node_Entity_0/Nuvio:partOf
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#CubicSpline"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_TimeInterval_0 in $doc_ObjectDescription
    let $value_TimeInterval_0 := fn:data($node_TimeInterval_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_TimeInterval_0) and $node_TimeInterval_0/RFDevice:hasPulseRepetitionFrequency/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="TimeInterval_0">{$value_TimeInterval_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_TimeInterval_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TimeInterval"]
    let $value_TimeInterval_0 := fn:data($node_TimeInterval_0/@rdf:about)
    where fn:exists($node_TimeInterval_0)
    return
      <xqllib:result>
        <xqllib:var name="TimeInterval_0">{$value_TimeInterval_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:optional($GRAPH_5,$GRAPH_6,("TimeInterval_0"))
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Var0) and $node_Var0/Nuvio:informationSource/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#MannedPlatform"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_DeceptiveCommunicationsJamming_0 in $doc_ObjectDescription
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:about)
    for $node_Var0 in $node_DeceptiveCommunicationsJamming_0/RFDevice:supportsSpectrumSensing
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_DeceptiveCommunicationsJamming_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_DeceptiveCommunicationsJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveCommunicationsJamming"]
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:about)
    where fn:exists($node_DeceptiveCommunicationsJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_DeceptiveCommunicationsJamming_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Instance6128"]/RFDevice:hasMaxOutputPower
    let $value_DeceptiveCommunicationsJamming_0 := fn:data($node_DeceptiveCommunicationsJamming_0/@rdf:resource)
    where fn:exists($value_DeceptiveCommunicationsJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveCommunicationsJamming_0">{$value_DeceptiveCommunicationsJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:optional($GRAPH_12,$GRAPH_13,("DeceptiveCommunicationsJamming_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_11,$GRAPH_14,("DeceptiveCommunicationsJamming_0"))
  let $GRAPH_16 := ($GRAPH_10,$GRAPH_15)
  let $GRAPH_17 := xqllib:and($GRAPH_8,$GRAPH_16,("Var0"))
  let $GRAPH_19 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_SpatialUnit_0 in $node_Entity_0/Nuvio:hasUnitOfMeasure
    let $value_SpatialUnit_0 := fn:data($node_SpatialUnit_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_SpatialUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SpatialUnit_0">{$value_SpatialUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 :=  
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
  let $GRAPH_21 := $GRAPH_20[(data(xqllib:var[@name="DataValue0"]) < -562066192)]
  let $GRAPH_22 := xqllib:and($GRAPH_19,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 :=  
    for $node_SpatialUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpatialUnit"]
    let $value_SpatialUnit_0 := fn:data($node_SpatialUnit_0/@rdf:about)
    where fn:exists($node_SpatialUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="SpatialUnit_0">{$value_SpatialUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 := ($GRAPH_22,$GRAPH_23)
  let $GRAPH_25 := xqllib:and($GRAPH_17,$GRAPH_24,("Entity_0"))
  let $GRAPH_26 := xqllib:and($GRAPH_7,$GRAPH_25,("Entity_0"))
  let $GRAPH_27 := xqllib:and($GRAPH_4,$GRAPH_26,("Entity_0"))
  let $GRAPH_28 := ($GRAPH_3,$GRAPH_27)
  let $GRAPH_29 := xqllib:and($GRAPH_1,$GRAPH_28,("Entity_0"))
  let $GRAPH_30 := xqllib:and($GRAPH_0,$GRAPH_29,("SearchRadar_0"))
  return
    $GRAPH_30
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SearchRadar_0"))),("SearchRadar_0"))
