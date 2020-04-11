import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPX300_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPX300"]
    let $value_USRPX300_0 := fn:data($node_USRPX300_0/@rdf:about)
    where fn:exists($node_USRPX300_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX300_0">{$value_USRPX300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPX300_0 in $node_Var0/Nuvio:aggregateOf
    let $value_USRPX300_0 := fn:data($node_USRPX300_0/@rdf:resource)
    where fn:exists($value_USRPX300_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX300_0">{$value_USRPX300_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Attribute_0) and fn:exists($node_Var0) and $node_Attribute_0/Nuvio:expresses/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Modulator_0 in $doc_ObjectDescription
    let $value_Modulator_0 := fn:data($node_Modulator_0/@rdf:about)
    for $node_Var0 in $node_Modulator_0/Nuvio:hasParticipant
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Modulator_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Modulator_0">{$value_Modulator_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Modulator_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Modulator"]
    let $value_Modulator_0 := fn:data($node_Modulator_0/@rdf:about)
    where fn:exists($node_Modulator_0)
    return
      <xqllib:result>
        <xqllib:var name="Modulator_0">{$value_Modulator_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_ChokeRingAntenna_0 in $doc_ObjectDescription
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:about)
    for $node_Modulator_0 in $node_ChokeRingAntenna_0/Nuvio:partOf
    let $value_Modulator_0 := fn:data($node_Modulator_0/@rdf:resource)
    where fn:exists($node_ChokeRingAntenna_0) and fn:exists($value_Modulator_0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
        <xqllib:var name="Modulator_0">{$value_Modulator_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Modulator_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Modulator_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Var0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("USRPX300_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX300_0"))),("USRPX300_0"))
