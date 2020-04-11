import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
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
    for $node_RFSystem_0 in $doc_ObjectDescription
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:about)
    for $node_Var0 in $node_RFSystem_0/RFDevice:supportsTuning
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_RFSystem_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FixedBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SweepJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Time_0 in $node_Var0/RFDevice:hasPulseRepetitionFrequency
    let $value_Time_0 := fn:data($node_Time_0/@rdf:resource)
    where fn:exists($value_Time_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Time_0">{$value_Time_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Time_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Time"]
    let $value_Time_0 := fn:data($node_Time_0/@rdf:about)
    where fn:exists($node_Time_0)
    return
      <xqllib:result>
        <xqllib:var name="Time_0">{$value_Time_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:optional($GRAPH_5,$GRAPH_6,("Time_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("Var0"))
  let $GRAPH_9 := ($GRAPH_3,$GRAPH_8)
  let $GRAPH_10 := xqllib:and($GRAPH_1,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_0,$GRAPH_10,("RFSystem_0"))
  return
    $GRAPH_11
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RFSystem_0"))),("RFSystem_0"))
