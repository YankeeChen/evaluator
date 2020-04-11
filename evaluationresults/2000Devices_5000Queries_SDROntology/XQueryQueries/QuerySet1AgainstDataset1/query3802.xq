import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN200_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN200"]
    let $value_USRPN200_0 := fn:data($node_USRPN200_0/@rdf:about)
    where fn:exists($node_USRPN200_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN200_0">{$value_USRPN200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPN200_0 in $node_Entity_0/Nuvio:partOf
    let $value_USRPN200_0 := fn:data($node_USRPN200_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPN200_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN200_0">{$value_USRPN200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/Nuvio:hasValue
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Quality_0 in $doc_ObjectDescription
    let $value_Quality_0 := fn:data($node_Quality_0/@rdf:about)
    for $node_Entity_0 in $node_Quality_0/Nuvio:hasProcessQuality
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Quality_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Quality_0">{$value_Quality_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Quality_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quality"]
    let $value_Quality_0 := fn:data($node_Quality_0/@rdf:about)
    where fn:exists($node_Quality_0)
    return
      <xqllib:result>
        <xqllib:var name="Quality_0">{$value_Quality_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Quality_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Entity_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Entity_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("USRPN200_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN200_0"))),("USRPN200_0"))
