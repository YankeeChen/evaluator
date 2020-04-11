import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RFSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RFSystem"]
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:about)
    where fn:exists($node_RFSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Submarine_0 in $doc_ObjectDescription
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:about)
    for $node_RFSystem_0 in $node_Submarine_0/RFDevice:isDeployedOn
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:resource)
    where fn:exists($value_RFSystem_0) and fn:exists($node_Submarine_0)
    return
      <xqllib:result>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Submarine_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Submarine"]
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:about)
    where fn:exists($node_Submarine_0)
    return
      <xqllib:result>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Submarine_0 in $doc_ObjectDescription
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:about)
    for $node_Process_0 in $node_Submarine_0/RFDevice:supportsJamming
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($value_Process_0) and fn:exists($node_Submarine_0)
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Port_0 in $doc_ObjectDescription
    let $value_Port_0 := fn:data($node_Port_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_Port_0) and fn:exists($node_Process_0) and $node_Port_0/Nuvio:participatesIn/@rdf:resource = $value_Process_0
    return
      <xqllib:result>
        <xqllib:var name="Port_0">{$value_Port_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Port_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Port"]
    let $value_Port_0 := fn:data($node_Port_0/@rdf:about)
    where fn:exists($node_Port_0)
    return
      <xqllib:result>
        <xqllib:var name="Port_0">{$value_Port_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Port_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Process_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Submarine_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Submarine_0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_0,$GRAPH_9,("RFSystem_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RFSystem_0"))),("RFSystem_0"))
