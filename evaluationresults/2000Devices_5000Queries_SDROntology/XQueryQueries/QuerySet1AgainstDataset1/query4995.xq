import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SearchRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SearchRadar"]
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    where fn:exists($node_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_SearchRadar_0 in $node_Object_0/RFDevice:isProducerOf
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_FeatureDetection_0 in $doc_ObjectDescription
    let $value_FeatureDetection_0 := fn:data($node_FeatureDetection_0/@rdf:about)
    for $node_Object_0 in $node_FeatureDetection_0/RFDevice:supportsSpectrumSensing
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_FeatureDetection_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="FeatureDetection_0">{$value_FeatureDetection_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_FeatureDetection_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FeatureDetection"]
    let $value_FeatureDetection_0 := fn:data($node_FeatureDetection_0/@rdf:about)
    where fn:exists($node_FeatureDetection_0)
    return
      <xqllib:result>
        <xqllib:var name="FeatureDetection_0">{$value_FeatureDetection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := ($GRAPH_3,$GRAPH_4)
  let $GRAPH_6 := xqllib:and($GRAPH_1,$GRAPH_5,("Object_0"))
  let $GRAPH_7 := xqllib:optional($GRAPH_0,$GRAPH_6,("SearchRadar_0"))
  return
    $GRAPH_7
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SearchRadar_0"))),("SearchRadar_0"))
