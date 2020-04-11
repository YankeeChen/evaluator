import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_CommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CommunicationsSystem"]
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:about)
    where fn:exists($node_CommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_CommunicationsSystem_0 in $node_Process_0/RFDevice:supportsSpectrumSensing
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_CommunicationsSystem_0) and fn:exists($node_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Width_0 in $doc_ObjectDescription
    let $value_Width_0 := fn:data($node_Width_0/@rdf:about)
    for $node_Process_0 in $node_Width_0/RFDevice:hasEffectiveRadiatedPower
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($value_Process_0) and fn:exists($node_Width_0)
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="Width_0">{$value_Width_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Width_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Width"]
    let $value_Width_0 := fn:data($node_Width_0/@rdf:about)
    where fn:exists($node_Width_0)
    return
      <xqllib:result>
        <xqllib:var name="Width_0">{$value_Width_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Width_0 in $node_Var0/Nuvio:hasValue
    let $value_Width_0 := fn:data($node_Width_0/@rdf:resource)
    where fn:exists($node_Var0) and fn:exists($value_Width_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Width_0">{$value_Width_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_SpatialLinearUnit_0 in $doc_ObjectDescription
    let $value_SpatialLinearUnit_0 := fn:data($node_SpatialLinearUnit_0/@rdf:about)
    for $node_Var0 in $node_SpatialLinearUnit_0/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_SpatialLinearUnit_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="SpatialLinearUnit_0">{$value_SpatialLinearUnit_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Var0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Width_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_2,$GRAPH_7,("Width_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Process_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("CommunicationsSystem_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CommunicationsSystem_0"))),("CommunicationsSystem_0"))
