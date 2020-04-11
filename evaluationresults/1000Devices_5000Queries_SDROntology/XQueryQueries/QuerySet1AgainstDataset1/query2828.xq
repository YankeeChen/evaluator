import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RadarSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarSystem"]
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    where fn:exists($node_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_UnmannedPlatform_0 in $doc_ObjectDescription
    let $value_UnmannedPlatform_0 := fn:data($node_UnmannedPlatform_0/@rdf:about)
    for $node_RadarSystem_0 in $node_UnmannedPlatform_0/RFDevice:isDeployedOn
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:resource)
    where fn:exists($value_RadarSystem_0) and fn:exists($node_UnmannedPlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
        <xqllib:var name="UnmannedPlatform_0">{$value_UnmannedPlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_UnmannedPlatform_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#UnmannedPlatform"]
    let $value_UnmannedPlatform_0 := fn:data($node_UnmannedPlatform_0/@rdf:about)
    where fn:exists($node_UnmannedPlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="UnmannedPlatform_0">{$value_UnmannedPlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("UnmannedPlatform_0"))
  let $GRAPH_4 := xqllib:and($GRAPH_0,$GRAPH_3,("RadarSystem_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
