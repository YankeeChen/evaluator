import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
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
    for $node_JammingSystem_0 in $doc_ObjectDescription
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:about)
    for $node_SpotJamming_0 in $node_JammingSystem_0/RFDevice:hasCapability
    let $value_SpotJamming_0 := fn:data($node_SpotJamming_0/@rdf:resource)
    where fn:exists($node_JammingSystem_0) and fn:exists($value_SpotJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
        <xqllib:var name="SpotJamming_0">{$value_SpotJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_SpotJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpotJamming"]
    let $value_SpotJamming_0 := fn:data($node_SpotJamming_0/@rdf:about)
    where fn:exists($node_SpotJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="SpotJamming_0">{$value_SpotJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("SpotJamming_0"))
  let $GRAPH_4 := xqllib:optional($GRAPH_0,$GRAPH_3,("JammingSystem_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("JammingSystem_0"))),("JammingSystem_0"))
