import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200_210_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200-210"]
    let $value_USRPB200_210_0 := fn:data($node_USRPB200_210_0/@rdf:about)
    where fn:exists($node_USRPB200_210_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_210_0">{$value_USRPB200_210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPB200_210_0 in $node_Var0/RFDevice:supportsTuning
    let $value_USRPB200_210_0 := fn:data($node_USRPB200_210_0/@rdf:resource)
    where fn:exists($value_USRPB200_210_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_210_0">{$value_USRPB200_210_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AdjustableBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:optional($GRAPH_4,$GRAPH_5,("Var0"))
  let $GRAPH_7 :=  
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
  let $GRAPH_8 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_QuantityRange_0 in $node_Attribute_0/RFDevice:hasMax
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("QuantityRange_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_3,$GRAPH_10,("Var0"))
  let $GRAPH_12 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := ($GRAPH_11,$GRAPH_12)
  let $GRAPH_14 := xqllib:and($GRAPH_1,$GRAPH_13,("Var0"))
  let $GRAPH_15 := xqllib:and($GRAPH_0,$GRAPH_14,("USRPB200_210_0"))
  return
    $GRAPH_15
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200_210_0"))),("USRPB200_210_0"))
