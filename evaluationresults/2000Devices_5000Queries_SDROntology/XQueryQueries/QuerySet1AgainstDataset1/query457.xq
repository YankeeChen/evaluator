import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
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
    for $node_Aircraft_0 in $doc_ObjectDescription
    let $value_Aircraft_0 := fn:data($node_Aircraft_0/@rdf:about)
    for $node_PulseRadar_0 in $node_Aircraft_0/RFDevice:isDeployedOn
    let $value_PulseRadar_0 := fn:data($node_PulseRadar_0/@rdf:resource)
    where fn:exists($node_Aircraft_0) and fn:exists($value_PulseRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Aircraft_0">{$value_Aircraft_0}</xqllib:var>
        <xqllib:var name="PulseRadar_0">{$value_PulseRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Aircraft_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Aircraft"]
    let $value_Aircraft_0 := fn:data($node_Aircraft_0/@rdf:about)
    where fn:exists($node_Aircraft_0)
    return
      <xqllib:result>
        <xqllib:var name="Aircraft_0">{$value_Aircraft_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_Aircraft_0 in $node_Process_0/RFDevice:hasCapability
    let $value_Aircraft_0 := fn:data($node_Aircraft_0/@rdf:resource)
    where fn:exists($value_Aircraft_0) and fn:exists($node_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="Aircraft_0">{$value_Aircraft_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Percentage_0 in $doc_ObjectDescription
    let $value_Percentage_0 := fn:data($node_Percentage_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_Percentage_0) and fn:exists($node_Process_0) and $node_Percentage_0/RFDevice:hasMaxOutputPower/@rdf:resource = $value_Process_0
    return
      <xqllib:result>
        <xqllib:var name="Percentage_0">{$value_Percentage_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Percentage_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Percentage"]
    let $value_Percentage_0 := fn:data($node_Percentage_0/@rdf:about)
    where fn:exists($node_Percentage_0)
    return
      <xqllib:result>
        <xqllib:var name="Percentage_0">{$value_Percentage_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Percentage_0 in $node_Var0/Nuvio:hasValue
    let $value_Percentage_0 := fn:data($node_Percentage_0/@rdf:resource)
    where fn:exists($value_Percentage_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Percentage_0">{$value_Percentage_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := ($GRAPH_7,$GRAPH_8)
  let $GRAPH_10 := ($GRAPH_5,$GRAPH_9)
  let $GRAPH_11 := xqllib:and($GRAPH_3,$GRAPH_10,("Process_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("Aircraft_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("Aircraft_0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_0,$GRAPH_13,("PulseRadar_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseRadar_0"))),("PulseRadar_0"))
