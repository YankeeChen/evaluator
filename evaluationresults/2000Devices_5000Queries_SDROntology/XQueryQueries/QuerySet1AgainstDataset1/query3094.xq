import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_MonostaticRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#MonostaticRadar"]
    let $value_MonostaticRadar_0 := fn:data($node_MonostaticRadar_0/@rdf:about)
    where fn:exists($node_MonostaticRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="MonostaticRadar_0">{$value_MonostaticRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Ship_0 in $doc_ObjectDescription
    let $value_Ship_0 := fn:data($node_Ship_0/@rdf:about)
    for $node_MonostaticRadar_0 in $node_Ship_0/RFDevice:isDeployedOn
    let $value_MonostaticRadar_0 := fn:data($node_MonostaticRadar_0/@rdf:resource)
    where fn:exists($value_MonostaticRadar_0) and fn:exists($node_Ship_0)
    return
      <xqllib:result>
        <xqllib:var name="MonostaticRadar_0">{$value_MonostaticRadar_0}</xqllib:var>
        <xqllib:var name="Ship_0">{$value_Ship_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Ship_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Ship"]
    let $value_Ship_0 := fn:data($node_Ship_0/@rdf:about)
    where fn:exists($node_Ship_0)
    return
      <xqllib:result>
        <xqllib:var name="Ship_0">{$value_Ship_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_Ship_0 in $node_Process_0/RFDevice:supportsTuning
    let $value_Ship_0 := fn:data($node_Ship_0/@rdf:resource)
    where fn:exists($node_Process_0) and fn:exists($value_Ship_0)
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="Ship_0">{$value_Ship_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_ArcByCenterPoint_0 in $node_Process_0/Nuvio:hasParticipant
    let $value_ArcByCenterPoint_0 := fn:data($node_ArcByCenterPoint_0/@rdf:resource)
    where fn:exists($value_ArcByCenterPoint_0) and fn:exists($node_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="ArcByCenterPoint_0">{$value_ArcByCenterPoint_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Process_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Ship_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Ship_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("MonostaticRadar_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("MonostaticRadar_0"))),("MonostaticRadar_0"))
