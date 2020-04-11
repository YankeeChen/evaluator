import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB2xxmini_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB2xxmini"]
    let $value_USRPB2xxmini_0 := fn:data($node_USRPB2xxmini_0/@rdf:about)
    where fn:exists($node_USRPB2xxmini_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xxmini_0">{$value_USRPB2xxmini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_USRPB2xxmini_0 in $node_Object_0/RFDevice:hasProducer
    let $value_USRPB2xxmini_0 := fn:data($node_USRPB2xxmini_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_USRPB2xxmini_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="USRPB2xxmini_0">{$value_USRPB2xxmini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_AntennaPolarization_0 in $doc_ObjectDescription
    let $value_AntennaPolarization_0 := fn:data($node_AntennaPolarization_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_AntennaPolarization_0) and fn:exists($node_Object_0) and $node_AntennaPolarization_0/Nuvio:hasObjectQuality/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="AntennaPolarization_0">{$value_AntennaPolarization_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_AntennaPolarization_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AntennaPolarization"]
    let $value_AntennaPolarization_0 := fn:data($node_AntennaPolarization_0/@rdf:about)
    where fn:exists($node_AntennaPolarization_0)
    return
      <xqllib:result>
        <xqllib:var name="AntennaPolarization_0">{$value_AntennaPolarization_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("AntennaPolarization_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Object_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("USRPB2xxmini_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xxmini_0"))),("USRPB2xxmini_0"))
