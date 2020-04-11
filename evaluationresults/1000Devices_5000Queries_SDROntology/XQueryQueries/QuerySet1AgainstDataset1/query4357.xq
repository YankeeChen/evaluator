import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
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
    for $node_Submarine_0 in $doc_ObjectDescription
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:about)
    for $node_SearchRadar_0 in $node_Submarine_0/RFDevice:isDeployedOn
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:resource)
    where fn:exists($value_SearchRadar_0) and fn:exists($node_Submarine_0)
    return
      <xqllib:result>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Submarine_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Submarine"]
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:about)
    where fn:exists($node_Submarine_0)
    return
      <xqllib:result>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Moving_0 in $doc_ObjectDescription
    let $value_Moving_0 := fn:data($node_Moving_0/@rdf:about)
    for $node_Submarine_0 in $node_Moving_0/RFDevice:supportsTransmitting
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:resource)
    where fn:exists($node_Moving_0) and fn:exists($value_Submarine_0)
    return
      <xqllib:result>
        <xqllib:var name="Moving_0">{$value_Moving_0}</xqllib:var>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:optional($GRAPH_2,$GRAPH_3,("Submarine_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Submarine_0"))
  let $GRAPH_6 := xqllib:optional($GRAPH_0,$GRAPH_5,("SearchRadar_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SearchRadar_0"))),("SearchRadar_0"))
