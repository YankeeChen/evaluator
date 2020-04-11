import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ModelX_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ModelX"]
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:about)
    where fn:exists($node_ModelX_0)
    return
      <xqllib:result>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_ModelX_0 in $node_Object_0/Nuvio:partOf
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:resource)
    where fn:exists($value_ModelX_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Object_0) and fn:exists($node_Situation_0) and $node_Situation_0/RFDevice:supportsSpectrumSensing/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_NonNegativeIntegerValue_0 in $doc_ObjectDescription
    let $value_NonNegativeIntegerValue_0 := fn:data($node_NonNegativeIntegerValue_0/@rdf:about)
    for $node_Situation_0 in $node_NonNegativeIntegerValue_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_NonNegativeIntegerValue_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="NonNegativeIntegerValue_0">{$value_NonNegativeIntegerValue_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_NonNegativeIntegerValue_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NonNegativeIntegerValue"]
    let $value_NonNegativeIntegerValue_0 := fn:data($node_NonNegativeIntegerValue_0/@rdf:about)
    where fn:exists($node_NonNegativeIntegerValue_0)
    return
      <xqllib:result>
        <xqllib:var name="NonNegativeIntegerValue_0">{$value_NonNegativeIntegerValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_NonNegativeIntegerValue_0 in $doc_ObjectDescription
    let $value_NonNegativeIntegerValue_0 := fn:data($node_NonNegativeIntegerValue_0/@rdf:about)
    for $node_DataValue0 in $node_NonNegativeIntegerValue_0/RFDevice:hasIntegerValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_NonNegativeIntegerValue_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="NonNegativeIntegerValue_0">{$value_NonNegativeIntegerValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := $GRAPH_6[(data(xqllib:var[@name="DataValue0"]) > 1719792404)]
  let $GRAPH_8 := ($GRAPH_5,$GRAPH_7)
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("NonNegativeIntegerValue_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("Situation_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Object_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("ModelX_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ModelX_0"))),("ModelX_0"))
