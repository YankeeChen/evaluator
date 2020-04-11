import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE312_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE312"]
    let $value_USRPE312_0 := fn:data($node_USRPE312_0/@rdf:about)
    where fn:exists($node_USRPE312_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE312_0">{$value_USRPE312_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPE312_0 in $node_Var0/Nuvio:partOf
    let $value_USRPE312_0 := fn:data($node_USRPE312_0/@rdf:resource)
    where fn:exists($value_USRPE312_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE312_0">{$value_USRPE312_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioComponent"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Producer_0 in $node_Var0/RFDevice:hasProducer
    let $value_Producer_0 := fn:data($node_Producer_0/@rdf:resource)
    where fn:exists($value_Producer_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Producer_0">{$value_Producer_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Producer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Producer"]
    let $value_Producer_0 := fn:data($node_Producer_0/@rdf:about)
    where fn:exists($node_Producer_0)
    return
      <xqllib:result>
        <xqllib:var name="Producer_0">{$value_Producer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Producer_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Var0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Var0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("USRPE312_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE312_0"))),("USRPE312_0"))
