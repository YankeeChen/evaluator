import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
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
    for $node_BarrageJamming_0 in $doc_ObjectDescription
    let $value_BarrageJamming_0 := fn:data($node_BarrageJamming_0/@rdf:about)
    for $node_JammingSystem_0 in $node_BarrageJamming_0/RFDevice:supportsTuning
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:resource)
    where fn:exists($node_BarrageJamming_0) and fn:exists($value_JammingSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="BarrageJamming_0">{$value_BarrageJamming_0}</xqllib:var>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_BarrageJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BarrageJamming"]
    let $value_BarrageJamming_0 := fn:data($node_BarrageJamming_0/@rdf:about)
    where fn:exists($node_BarrageJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="BarrageJamming_0">{$value_BarrageJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_BarrageJamming_0 in $node_Power_0/RFDevice:hasPulseRepetitionFrequency
    let $value_BarrageJamming_0 := fn:data($node_BarrageJamming_0/@rdf:resource)
    where fn:exists($value_BarrageJamming_0) and fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="BarrageJamming_0">{$value_BarrageJamming_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("BarrageJamming_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("BarrageJamming_0"))
  let $GRAPH_6 := xqllib:optional($GRAPH_0,$GRAPH_5,("JammingSystem_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("JammingSystem_0"))),("JammingSystem_0"))
