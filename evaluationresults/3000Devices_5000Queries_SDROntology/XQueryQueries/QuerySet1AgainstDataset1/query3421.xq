import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_JammingSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#JammingSystem"]
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:about)
    where fn:exists($node_JammingSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_JammingSystem_0 in $doc_ObjectDescription
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:about)
    for $node_CommunicationsJamming_0 in $node_JammingSystem_0/RFDevice:supportsTransmitting
    let $value_CommunicationsJamming_0 := fn:data($node_CommunicationsJamming_0/@rdf:resource)
    where fn:exists($value_CommunicationsJamming_0) and fn:exists($node_JammingSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsJamming_0">{$value_CommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_CommunicationsJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CommunicationsJamming"]
    let $value_CommunicationsJamming_0 := fn:data($node_CommunicationsJamming_0/@rdf:about)
    where fn:exists($node_CommunicationsJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsJamming_0">{$value_CommunicationsJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_CommunicationsJamming_0 in $node_Power_0/RFDevice:hasMaxOutputPower
    let $value_CommunicationsJamming_0 := fn:data($node_CommunicationsJamming_0/@rdf:resource)
    where fn:exists($value_CommunicationsJamming_0) and fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsJamming_0">{$value_CommunicationsJamming_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Power_0 in $node_Var0/Nuvio:hasValue
    let $value_Power_0 := fn:data($node_Power_0/@rdf:resource)
    where fn:exists($value_Power_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue0 in $node_Var0/RFDevice:hasPositiveIntegerValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := $GRAPH_5[(data(xqllib:var[@name="DataValue0"]) = -82.73)]
  let $GRAPH_7 := xqllib:and($GRAPH_4,$GRAPH_6,("Var0"))
  let $GRAPH_8 := xqllib:and($GRAPH_3,$GRAPH_7,("Power_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_2,$GRAPH_8,("CommunicationsJamming_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_1,$GRAPH_9,("CommunicationsJamming_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_0,$GRAPH_10,("JammingSystem_0"))
  return
    $GRAPH_11
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("JammingSystem_0"))),("JammingSystem_0"))
