import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
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
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_TrackingRadar_0 in $node_Process_0/RFDevice:supportsTuning
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:resource)
    where fn:exists($node_Process_0) and fn:exists($value_TrackingRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_BarrageJamming_0 in $doc_ObjectDescription
    let $value_BarrageJamming_0 := fn:data($node_BarrageJamming_0/@rdf:about)
    for $node_Process_0 in $node_BarrageJamming_0/Nuvio:hasSubprocess
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($node_BarrageJamming_0) and fn:exists($value_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="BarrageJamming_0">{$value_BarrageJamming_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_BarrageJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BarrageJamming"]
    let $value_BarrageJamming_0 := fn:data($node_BarrageJamming_0/@rdf:about)
    where fn:exists($node_BarrageJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="BarrageJamming_0">{$value_BarrageJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_BarrageJamming_0 in $node_Quantity_0/RFDevice:hasPulseRepetitionFrequency
    let $value_BarrageJamming_0 := fn:data($node_BarrageJamming_0/@rdf:resource)
    where fn:exists($value_BarrageJamming_0) and fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="BarrageJamming_0">{$value_BarrageJamming_0}</xqllib:var>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Quantity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quantity"]
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    where fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Quantity_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("BarrageJamming_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("BarrageJamming_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Process_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("TrackingRadar_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("TrackingRadar_0"))),("TrackingRadar_0"))
