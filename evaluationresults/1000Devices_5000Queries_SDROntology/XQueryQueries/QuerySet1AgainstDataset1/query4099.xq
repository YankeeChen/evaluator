import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
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
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_TrackingRadar_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_TrackingRadar_0 := fn:data($node_TrackingRadar_0/@rdf:resource)
    where fn:exists($value_TrackingRadar_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="TrackingRadar_0">{$value_TrackingRadar_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_QuantityRange_0 in $doc_ObjectDescription
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:about)
    for $node_Var0 in $node_QuantityRange_0/RFDevice:hasFrequencyRange
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_QuantityRange_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_QuantityRange_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#QuantityRange"]
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:about)
    where fn:exists($node_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_FrequencyAccuracy_0 in $doc_ObjectDescription
    let $value_FrequencyAccuracy_0 := fn:data($node_FrequencyAccuracy_0/@rdf:about)
    for $node_QuantityRange_0 in $node_FrequencyAccuracy_0/RFDevice:hasMin
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:resource)
    where fn:exists($node_FrequencyAccuracy_0) and fn:exists($value_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyAccuracy_0">{$value_FrequencyAccuracy_0}</xqllib:var>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_FrequencyAccuracy_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyAccuracy"]
    let $value_FrequencyAccuracy_0 := fn:data($node_FrequencyAccuracy_0/@rdf:about)
    where fn:exists($node_FrequencyAccuracy_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyAccuracy_0">{$value_FrequencyAccuracy_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("FrequencyAccuracy_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("QuantityRange_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_3,$GRAPH_8,("QuantityRange_0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_2,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("TrackingRadar_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("TrackingRadar_0"))),("TrackingRadar_0"))
