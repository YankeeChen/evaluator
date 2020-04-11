import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseRadar"]
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:about)
    where fn:exists($node_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_PulseRadar_0 in $node_Object_0/RFDevice:hasProducer
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Length_0 in $node_Object_0/RFDevice:hasLength
    let $value_Length_0 := fn:data($node_Length_0/@rdf:resource)
    where fn:exists($value_Length_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Length_0">{$value_Length_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Length_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Length"]
    let $value_Length_0 := fn:data($node_Length_0/@rdf:about)
    where fn:exists($node_Length_0)
    return
      <xqllib:result>
        <xqllib:var name="Length_0">{$value_Length_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Length_0 in $doc_ObjectDescription
    let $value_Length_0 := fn:data($node_Length_0/@rdf:about)
    for $node_Var0 in $node_Length_0/Nuvio:hasValue
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Length_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Length_0">{$value_Length_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_SpatialUnit_0 in $doc_ObjectDescription
    let $value_SpatialUnit_0 := fn:data($node_SpatialUnit_0/@rdf:about)
    for $node_Var0 in $node_SpatialUnit_0/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_SpatialUnit_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="SpatialUnit_0">{$value_SpatialUnit_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_SpatialUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpatialUnit"]
    let $value_SpatialUnit_0 := fn:data($node_SpatialUnit_0/@rdf:about)
    where fn:exists($node_SpatialUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="SpatialUnit_0">{$value_SpatialUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("SpatialUnit_0"))
  let $GRAPH_8 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NonNegativeDecimalValue"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:and($GRAPH_4,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_3,$GRAPH_10,("Length_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("Length_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("Object_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_0,$GRAPH_13,("PulseRadar_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseRadar_0"))),("PulseRadar_0"))
