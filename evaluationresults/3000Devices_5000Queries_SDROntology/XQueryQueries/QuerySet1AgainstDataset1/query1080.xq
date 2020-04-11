import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE3xx"]
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:about)
    where fn:exists($node_USRPE3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPE3xx_0 in $node_Var0/RFDevice:hasCapability
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:resource)
    where fn:exists($value_USRPE3xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AdjustableBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_AdjustableBandwidthSensing_0 in $doc_ObjectDescription
    let $value_AdjustableBandwidthSensing_0 := fn:data($node_AdjustableBandwidthSensing_0/@rdf:about)
    for $node_Var0 in $node_AdjustableBandwidthSensing_0/Nuvio:relevantIndividual
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_AdjustableBandwidthSensing_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="AdjustableBandwidthSensing_0">{$value_AdjustableBandwidthSensing_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:optional($GRAPH_3,$GRAPH_4,("Var0"))
  let $GRAPH_6 :=  
    for $node_QuantityRange_0 in $doc_ObjectDescription
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:about)
    for $node_Var0 in $node_QuantityRange_0/RFDevice:hasBandwidthRange
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_QuantityRange_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_QuantityRange_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#QuantityRange"]
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:about)
    where fn:exists($node_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("QuantityRange_0"))
  let $GRAPH_9 := xqllib:optional($GRAPH_5,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:and($GRAPH_2,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("USRPE3xx_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE3xx_0"))),("USRPE3xx_0"))
