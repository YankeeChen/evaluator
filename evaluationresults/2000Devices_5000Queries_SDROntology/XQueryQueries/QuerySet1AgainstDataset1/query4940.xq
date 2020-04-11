import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_TrackingRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TrackingRadar"]
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:about)
    where fn:exists($node_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_TrackingRadar_0 in $doc_ObjectDescription
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:about)
    for $node_Object_0 in $node_TrackingRadar_0/Nuvio:aggregateOf
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_FrequencyScanRate_0 in $doc_ObjectDescription
    let $value_FrequencyScanRate_0 := fn:data($node_FrequencyScanRate_0/@rdf:about)
    for $node_Object_0 in $node_FrequencyScanRate_0/RFDevice:hasLevel
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_FrequencyScanRate_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyScanRate_0">{$value_FrequencyScanRate_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_FrequencyScanRate_0 in $node_Var0/Nuvio:hasValue
    let $value_FrequencyScanRate_0 := fn:data($node_FrequencyScanRate_0/@rdf:resource)
    where fn:exists($value_FrequencyScanRate_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyScanRate_0">{$value_FrequencyScanRate_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue0 in $node_Var0/Nuvio:hasDataValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := $GRAPH_4[(data(xqllib:var[@name="DataValue0"]) < -45.82)]
  let $GRAPH_6 := xqllib:and($GRAPH_3,$GRAPH_5,("Var0"))
  let $GRAPH_7 := xqllib:and($GRAPH_2,$GRAPH_6,("FrequencyScanRate_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_1,$GRAPH_7,("Object_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_0,$GRAPH_8,("TrackingRadar_0"))
  return
    $GRAPH_9
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("TrackingRadar_0"))),("TrackingRadar_0"))
