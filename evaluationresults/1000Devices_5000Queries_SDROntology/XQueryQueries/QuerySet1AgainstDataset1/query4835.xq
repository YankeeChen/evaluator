import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_CR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#CR"]
    let $value_CR_0 := fn:data($node_CR_0/@rdf:about)
    where fn:exists($node_CR_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Submarine_0 in $doc_ObjectDescription
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:about)
    for $node_CR_0 in $node_Submarine_0/RFDevice:isDeployedOn
    let $value_CR_0 := fn:data($node_CR_0/@rdf:resource)
    where fn:exists($value_CR_0) and fn:exists($node_Submarine_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
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
    for $node_Submarine_0 in $doc_ObjectDescription[RFDevice:supportsTransmitting/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Moving_instance13"]
    let $value_Submarine_0 := fn:data($node_Submarine_0/@rdf:about)
    where fn:exists($node_Submarine_0)
    return
      <xqllib:result>
        <xqllib:var name="Submarine_0">{$value_Submarine_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Submarine_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Submarine_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("CR_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CR_0"))),("CR_0"))
