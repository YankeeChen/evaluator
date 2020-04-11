import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
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
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_GNURadio_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_GNURadio_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Process_0) and $node_Process_0/Nuvio:expresses/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Submarine"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Moving_0 in $doc_ObjectDescription
    let $value_Moving_0 := fn:data($node_Moving_0/@rdf:about)
    for $node_Entity_0 in $node_Moving_0/RFDevice:supportsSpectrumSensing
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Moving_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Moving_0">{$value_Moving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Entity_0"))
  let $GRAPH_6 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_Entity_0 in $node_Quantity_0/RFDevice:hasEffectiveRadiatedPower
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Entity_0"))
  let $GRAPH_9 :=  
    for $node_LinearRing_0 in $doc_ObjectDescription
    let $value_LinearRing_0 := fn:data($node_LinearRing_0/@rdf:about)
    for $node_Entity_0 in $node_LinearRing_0/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_LinearRing_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="LinearRing_0">{$value_LinearRing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_LinearRing_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#LinearRing"]
    let $value_LinearRing_0 := fn:data($node_LinearRing_0/@rdf:about)
    where fn:exists($node_LinearRing_0)
    return
      <xqllib:result>
        <xqllib:var name="LinearRing_0">{$value_LinearRing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := ($GRAPH_9,$GRAPH_10)
  let $GRAPH_12 := xqllib:optional($GRAPH_7,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 :=  
    for $node_ElectronicProtection_0 in $doc_ObjectDescription
    let $value_ElectronicProtection_0 := fn:data($node_ElectronicProtection_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_ElectronicProtection_0) and fn:exists($node_Process_0) and $node_ElectronicProtection_0/Nuvio:hasSubprocess/@rdf:resource = $value_Process_0
    return
      <xqllib:result>
        <xqllib:var name="ElectronicProtection_0">{$value_ElectronicProtection_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_ElectronicProtection_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicProtection"]
    let $value_ElectronicProtection_0 := fn:data($node_ElectronicProtection_0/@rdf:about)
    where fn:exists($node_ElectronicProtection_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicProtection_0">{$value_ElectronicProtection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("ElectronicProtection_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_12,$GRAPH_15,())
  let $GRAPH_17 := xqllib:and($GRAPH_2,$GRAPH_16,("Entity_0","Process_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_0,$GRAPH_18,("GNURadio_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("GNURadio_0"))),("GNURadio_0"))
