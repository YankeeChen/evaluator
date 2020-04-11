import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_PulseDopplerRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseDopplerRadar"]
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:about)
    where fn:exists($node_PulseDopplerRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_PulseDopplerRadar_0 in $doc_ObjectDescription
    let $value_PulseDopplerRadar_0 := fn:data($node_PulseDopplerRadar_0/@rdf:about)
    for $node_MobilePlatform_0 in $node_PulseDopplerRadar_0/RFDevice:isDeployedOn
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:resource)
    where fn:exists($value_MobilePlatform_0) and fn:exists($node_PulseDopplerRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
        <xqllib:var name="PulseDopplerRadar_0">{$value_PulseDopplerRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_MobilePlatform_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#MobilePlatform"]
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:about)
    where fn:exists($node_MobilePlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_MobilePlatform_0 in $doc_ObjectDescription[RFDevice:supportsTuning/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#Moving_instance19"]
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:about)
    where fn:exists($node_MobilePlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := ($GRAPH_3,$GRAPH_4)
  let $GRAPH_6 := xqllib:and($GRAPH_1,$GRAPH_5,("MobilePlatform_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_0,$GRAPH_6,("PulseDopplerRadar_0"))
  return
    $GRAPH_7
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("PulseDopplerRadar_0"))),("PulseDopplerRadar_0"))
