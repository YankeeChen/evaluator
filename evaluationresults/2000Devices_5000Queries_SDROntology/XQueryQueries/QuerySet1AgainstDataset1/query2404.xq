import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SDR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#SDR"]
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:about)
    where fn:exists($node_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_SDR_0 in $doc_ObjectDescription
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:about)
    for $node_Var0 in $node_SDR_0/RFDevice:supportsTransmitting
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_SDR_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpectrumSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_FreqencyRange_0 in $doc_ObjectDescription
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:about)
    for $node_Var0 in $node_FreqencyRange_0/RFDevice:hasBandwidthRange
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_FreqencyRange_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_FreqencyRange_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FreqencyRange"]
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:about)
    where fn:exists($node_FreqencyRange_0)
    return
      <xqllib:result>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_FreqencyRange_0 in $node_Attribute_0/RFDevice:hasMin
    let $value_FreqencyRange_0 := fn:data($node_FreqencyRange_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_FreqencyRange_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="FreqencyRange_0">{$value_FreqencyRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Attribute_0"))
  let $GRAPH_9 := ($GRAPH_5,$GRAPH_8)
  let $GRAPH_10 := xqllib:and($GRAPH_3,$GRAPH_9,("FreqencyRange_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_2,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:and($GRAPH_1,$GRAPH_11,("Var0"))
  let $GRAPH_13 := xqllib:and($GRAPH_0,$GRAPH_12,("SDR_0"))
  return
    $GRAPH_13
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SDR_0"))),("SDR_0"))
