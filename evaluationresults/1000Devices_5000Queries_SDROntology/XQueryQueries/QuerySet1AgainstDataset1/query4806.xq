import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_Full_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Full-DuplexCommunicationsSystem"]
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Full_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Full_DuplexCommunicationsSystem_0 in $doc_ObjectDescription
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:about)
    for $node_Var0 in $node_Full_DuplexCommunicationsSystem_0/RFDevice:supportsTransmitting
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Full_DuplexCommunicationsSystem_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_DeceptiveJamming_0 in $doc_ObjectDescription
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_DeceptiveJamming_0) and fn:exists($node_Var0) and $node_DeceptiveJamming_0/Nuvio:hasSubprocess/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_DeceptiveJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveJamming"]
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:about)
    where fn:exists($node_DeceptiveJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DeceptiveJamming_0 in $node_Entity_0/RFDevice:hasMaxSensedPower
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:resource)
    where fn:exists($value_DeceptiveJamming_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("DeceptiveJamming_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("DeceptiveJamming_0"))
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BarrageJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Var0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("Full_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Full_DuplexCommunicationsSystem_0"))),("Full_DuplexCommunicationsSystem_0"))
