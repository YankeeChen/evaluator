import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_GNURadio_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#GNURadio"]
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:about)
    where fn:exists($node_GNURadio_0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Jammer_0 in $doc_ObjectDescription
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:about)
    for $node_GNURadio_0 in $node_Jammer_0/Nuvio:partOf
    let $value_GNURadio_0 := fn:data($node_GNURadio_0/@rdf:resource)
    where fn:exists($value_GNURadio_0) and fn:exists($node_Jammer_0)
    return
      <xqllib:result>
        <xqllib:var name="GNURadio_0">{$value_GNURadio_0}</xqllib:var>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Jammer_1 in $doc_ObjectDescription
    let $value_Jammer_1 := fn:data($node_Jammer_1/@rdf:about)
    for $node_Jammer_0 in $node_Jammer_1/Nuvio:partOf
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:resource)
    where fn:exists($value_Jammer_0) and fn:exists($node_Jammer_1)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
        <xqllib:var name="Jammer_1">{$value_Jammer_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("Jammer_0"))
  let $GRAPH_4 := xqllib:and($GRAPH_0,$GRAPH_3,("GNURadio_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("GNURadio_0"))),("GNURadio_0"))
