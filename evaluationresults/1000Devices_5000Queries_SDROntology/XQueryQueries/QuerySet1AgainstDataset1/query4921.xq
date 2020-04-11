import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
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
    for $node_Ship_0 in $doc_ObjectDescription
    let $value_Ship_0 := fn:data($node_Ship_0/@rdf:about)
    for $node_USRPX300_0 in $node_Ship_0/RFDevice:isDeployedOn
    let $value_USRPX300_0 := fn:data($node_USRPX300_0/@rdf:resource)
    where fn:exists($node_Ship_0) and fn:exists($value_USRPX300_0)
    return
      <xqllib:result>
        <xqllib:var name="Ship_0">{$value_Ship_0}</xqllib:var>
        <xqllib:var name="USRPX300_0">{$value_USRPX300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Moving_0 in $doc_ObjectDescription
    let $value_Moving_0 := fn:data($node_Moving_0/@rdf:about)
    for $node_Ship_0 in $node_Moving_0/RFDevice:supportsTransmitting
    let $value_Ship_0 := fn:data($node_Ship_0/@rdf:resource)
    where fn:exists($node_Moving_0) and fn:exists($value_Ship_0)
    return
      <xqllib:result>
        <xqllib:var name="Moving_0">{$value_Moving_0}</xqllib:var>
        <xqllib:var name="Ship_0">{$value_Ship_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Moving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Moving"]
    let $value_Moving_0 := fn:data($node_Moving_0/@rdf:about)
    where fn:exists($node_Moving_0)
    return
      <xqllib:result>
        <xqllib:var name="Moving_0">{$value_Moving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Moving_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Ship_0"))
  let $GRAPH_6 := xqllib:optional($GRAPH_0,$GRAPH_5,("USRPX300_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX300_0"))),("USRPX300_0"))
