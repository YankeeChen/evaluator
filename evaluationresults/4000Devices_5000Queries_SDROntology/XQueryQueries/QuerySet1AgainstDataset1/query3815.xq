import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
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
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_GNURadio_0 in $node_Object_0/RFDevice:hasProducer
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:resource)
    where fn:exists($value_GNURadio_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Gain_0 in $doc_ObjectDescription
    let $value_Gain_0 := fn:data($node_Gain_0/@rdf:about)
    for $node_Object_0 in $node_Gain_0/RFDevice:hasVoltage
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_Gain_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Gain_0">{$value_Gain_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Gain_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Gain"]
    let $value_Gain_0 := fn:data($node_Gain_0/@rdf:about)
    where fn:exists($node_Gain_0)
    return
      <xqllib:result>
        <xqllib:var name="Gain_0">{$value_Gain_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Gain_0 in $node_Var0/Nuvio:hasValue
    let $value_Gain_0 := fn:data($node_Gain_0/@rdf:resource)
    where fn:exists($value_Gain_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Gain_0">{$value_Gain_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Gain_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Gain_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Object_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_0,$GRAPH_7,("GNURadio_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("GNURadio_0"))),("GNURadio_0"))
