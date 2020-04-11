import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_Half_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Half-DuplexCommunicationsSystem"]
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Half_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Half_DuplexCommunicationsSystem_0 in $node_Object_0/RFDevice:hasProducer
    let $value_Half_DuplexCommunicationsSystem_0 := fn:data($node_Half_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_Half_DuplexCommunicationsSystem_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Half_DuplexCommunicationsSystem_0">{$value_Half_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Velocity_0 in $doc_ObjectDescription
    let $value_Velocity_0 := fn:data($node_Velocity_0/@rdf:about)
    for $node_Object_0 in $node_Velocity_0/RFDevice:hasHeight
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_Velocity_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Velocity_0">{$value_Velocity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Velocity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Velocity"]
    let $value_Velocity_0 := fn:data($node_Velocity_0/@rdf:about)
    where fn:exists($node_Velocity_0)
    return
      <xqllib:result>
        <xqllib:var name="Velocity_0">{$value_Velocity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Velocity_0 in $node_Var0/Nuvio:hasValue
    let $value_Velocity_0 := fn:data($node_Velocity_0/@rdf:resource)
    where fn:exists($node_Var0) and fn:exists($value_Velocity_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Velocity_0">{$value_Velocity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_VelocityUnit_0 in $doc_ObjectDescription
    let $value_VelocityUnit_0 := fn:data($node_VelocityUnit_0/@rdf:about)
    where fn:exists($node_Var0) and fn:exists($node_VelocityUnit_0) and $node_VelocityUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="VelocityUnit_0">{$value_VelocityUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
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
  let $GRAPH_7 := $GRAPH_6[(data(xqllib:var[@name="DataValue0"]) != -815731963)]
  let $GRAPH_8 := xqllib:optional($GRAPH_5,$GRAPH_7,("Var0"))
  let $GRAPH_9 :=  
    for $node_VelocityUnit_1 in $doc_ObjectDescription
    let $value_VelocityUnit_1 := fn:data($node_VelocityUnit_1/@rdf:about)
    for $node_Var0 in $node_VelocityUnit_1/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_VelocityUnit_1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="VelocityUnit_1">{$value_VelocityUnit_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:optional($GRAPH_8,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_4,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:and($GRAPH_3,$GRAPH_11,("Velocity_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_2,$GRAPH_12,("Velocity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_1,$GRAPH_13,("Object_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_0,$GRAPH_14,("Half_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_15
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Half_DuplexCommunicationsSystem_0"))),("Half_DuplexCommunicationsSystem_0"))
