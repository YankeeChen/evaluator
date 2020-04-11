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
    for $node_BistaticRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BistaticRadar"]
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:about)
    where fn:exists($node_BistaticRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_BistaticRadar_0 in $node_Var0/RFDevice:supportsTuning
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:resource)
    where fn:exists($value_BistaticRadar_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/RFDevice:hasTransmitPowerRange
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationContent_0 in $doc_ObjectDescription
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_InformationContent_0) and $node_InformationContent_0/Nuvio:expresses/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
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
  let $GRAPH_6 := $GRAPH_5[(data(xqllib:var[@name="DataValue0"]) <= 1442095748)]
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:optional($GRAPH_6,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0) and $doc_ObjectDescription[@rdf:ID = "USRPN200_instance1"]/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_CR_0 in $doc_ObjectDescription
    let $value_CR_0 := fn:data($node_CR_0/@rdf:about)
    for $node_Entity_0 in $node_CR_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_CR_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_CR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#CR"]
    let $value_CR_0 := fn:data($node_CR_0/@rdf:about)
    where fn:exists($node_CR_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_CR_0 in $doc_ObjectDescription
    let $value_CR_0 := fn:data($node_CR_0/@rdf:about)
    for $node_Quantity_0 in $node_CR_0/RFDevice:hasNoiseFigure
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:resource)
    where fn:exists($node_CR_0) and fn:exists($value_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Quantity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quantity"]
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    where fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Quantity_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_11,$GRAPH_14,("CR_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_10,$GRAPH_15,("CR_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_9,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := ($GRAPH_8,$GRAPH_17)
  let $GRAPH_19 := xqllib:and($GRAPH_3,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationContent_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationContent"]
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_InformationContent_0) and $node_Entity_0/Nuvio:representedBy/@rdf:resource = $value_InformationContent_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 := xqllib:optional($GRAPH_19,$GRAPH_20,("Entity_0","InformationContent_0"))
  let $GRAPH_22 := xqllib:and($GRAPH_2,$GRAPH_21,("Entity_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_1,$GRAPH_22,("Var0"))
  let $GRAPH_24 := xqllib:optional($GRAPH_0,$GRAPH_23,("BistaticRadar_0"))
  return
    $GRAPH_24
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("BistaticRadar_0"))),("BistaticRadar_0"))
