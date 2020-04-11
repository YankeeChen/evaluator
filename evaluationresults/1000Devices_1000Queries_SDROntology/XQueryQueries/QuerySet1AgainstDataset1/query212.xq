import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_Full_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Full-DuplexCommunicationsSystem"]
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Full_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Full_DuplexCommunicationsSystem_0 in $node_Entity_0/RFDevice:supportsSpectrumSensing
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Full_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationContent_0 in $node_Entity_0/Nuvio:expresses
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_InformationContent_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#ArcByCenterPoint"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyScanRateUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Entity_0"))
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FloatValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
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
  let $GRAPH_8 := $GRAPH_7[(data(xqllib:var[@name="DataValue0"]) <= 990343926)]
  let $GRAPH_9 := xqllib:and($GRAPH_6,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Entity_1 in $node_Entity_0/RFDevice:hasPolarization
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Entity_1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_5,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := xqllib:optional($GRAPH_2,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 :=  
    for $node_InformationContent_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationContent"]
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    where fn:exists($node_InformationContent_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("InformationContent_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_1,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:optional($GRAPH_0,$GRAPH_16,("Full_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_17
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Full_DuplexCommunicationsSystem_0"))),("Full_DuplexCommunicationsSystem_0"))
