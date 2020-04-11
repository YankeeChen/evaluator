import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_JammingSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#JammingSystem"]
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:about)
    where fn:exists($node_JammingSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_SweptSpotJamming_0 in $doc_ObjectDescription
    let $value_SweptSpotJamming_0 := fn:data($node_SweptSpotJamming_0/@rdf:about)
    for $node_JammingSystem_0 in $node_SweptSpotJamming_0/RFDevice:supportsJamming
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:resource)
    where fn:exists($value_JammingSystem_0) and fn:exists($node_SweptSpotJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
        <xqllib:var name="SweptSpotJamming_0">{$value_SweptSpotJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_SweptSpotJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SweptSpotJamming"]
    let $value_SweptSpotJamming_0 := fn:data($node_SweptSpotJamming_0/@rdf:about)
    where fn:exists($node_SweptSpotJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="SweptSpotJamming_0">{$value_SweptSpotJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_SweptSpotJamming_0 in $doc_ObjectDescription
    let $value_SweptSpotJamming_0 := fn:data($node_SweptSpotJamming_0/@rdf:about)
    for $node_Entity_0 in $node_SweptSpotJamming_0/RFDevice:hasPulseWidth
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_SweptSpotJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="SweptSpotJamming_0">{$value_SweptSpotJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:optional($GRAPH_2,$GRAPH_3,("SweptSpotJamming_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("SweptSpotJamming_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("JammingSystem_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("JammingSystem_0"))),("JammingSystem_0"))
