import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ContinuousWaveRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ContinuousWaveRadar"]
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:about)
    where fn:exists($node_ContinuousWaveRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_ContinuousWaveRadar_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_ContinuousWaveRadar_0 := fn:data($node_ContinuousWaveRadar_0/@rdf:resource)
    where fn:exists($value_ContinuousWaveRadar_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="ContinuousWaveRadar_0">{$value_ContinuousWaveRadar_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_NoiseJamming_0 in $doc_ObjectDescription
    let $value_NoiseJamming_0 := fn:data($node_NoiseJamming_0/@rdf:about)
    for $node_Var0 in $node_NoiseJamming_0/Nuvio:hasSubprocess
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_NoiseJamming_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseJamming_0">{$value_NoiseJamming_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_NoiseJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NoiseJamming"]
    let $value_NoiseJamming_0 := fn:data($node_NoiseJamming_0/@rdf:about)
    where fn:exists($node_NoiseJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseJamming_0">{$value_NoiseJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("NoiseJamming_0"))
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Var0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Var0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("ContinuousWaveRadar_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ContinuousWaveRadar_0"))),("ContinuousWaveRadar_0"))
