import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_CommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CommunicationsSystem"]
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:about)
    where fn:exists($node_CommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    for $node_CommunicationsSystem_0 in $node_RadarJammer_0/Nuvio:compositeOf
    let $value_CommunicationsSystem_0 := fn:data($node_CommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_CommunicationsSystem_0) and fn:exists($node_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="CommunicationsSystem_0">{$value_CommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_QuantityRange_0 in $doc_ObjectDescription
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:about)
    for $node_RadarJammer_0 in $node_QuantityRange_0/RFDevice:hasFrequencyAccuracy
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:resource)
    where fn:exists($node_QuantityRange_0) and fn:exists($value_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Percentage_0 in $doc_ObjectDescription
    let $value_Percentage_0 := fn:data($node_Percentage_0/@rdf:about)
    for $node_QuantityRange_0 in $node_Percentage_0/RFDevice:hasMin
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:resource)
    where fn:exists($node_Percentage_0) and fn:exists($value_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="Percentage_0">{$value_Percentage_0}</xqllib:var>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Percentage_0 in $node_Var0/Nuvio:hasValue
    let $value_Percentage_0 := fn:data($node_Percentage_0/@rdf:resource)
    where fn:exists($value_Percentage_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Percentage_0">{$value_Percentage_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Percentage_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("QuantityRange_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("RadarJammer_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("CommunicationsSystem_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CommunicationsSystem_0"))),("CommunicationsSystem_0"))
