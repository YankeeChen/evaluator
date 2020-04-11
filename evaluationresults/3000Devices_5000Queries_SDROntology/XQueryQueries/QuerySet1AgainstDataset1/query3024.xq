import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_BistaticRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BistaticRadar"]
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:about)
    where fn:exists($node_BistaticRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_BistaticRadar_0 in $doc_ObjectDescription
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:about)
    for $node_GroundPlatform_0 in $node_BistaticRadar_0/RFDevice:isDeployedOn
    let $value_GroundPlatform_0 := fn:data($node_GroundPlatform_0/@rdf:resource)
    where fn:exists($node_BistaticRadar_0) and fn:exists($value_GroundPlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
        <xqllib:var name="GroundPlatform_0">{$value_GroundPlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_GroundPlatform_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#GroundPlatform"]
    let $value_GroundPlatform_0 := fn:data($node_GroundPlatform_0/@rdf:about)
    where fn:exists($node_GroundPlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="GroundPlatform_0">{$value_GroundPlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("GroundPlatform_0"))
  let $GRAPH_4 := xqllib:optional($GRAPH_0,$GRAPH_3,("BistaticRadar_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("BistaticRadar_0"))),("BistaticRadar_0"))
