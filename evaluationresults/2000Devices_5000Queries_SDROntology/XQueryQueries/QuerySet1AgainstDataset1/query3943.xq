import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200mini_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200mini"]
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:about)
    where fn:exists($node_USRPB200mini_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPB200mini_0 in $doc_ObjectDescription
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:about)
    for $node_Entity_0 in $node_USRPB200mini_0/RFDevice:hasHeight
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_USRPB200mini_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Geodesic_0 in $doc_ObjectDescription
    let $value_Geodesic_0 := fn:data($node_Geodesic_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Geodesic_0) and $node_Geodesic_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Geodesic_0">{$value_Geodesic_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Geodesic_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#Geodesic"]
    let $value_Geodesic_0 := fn:data($node_Geodesic_0/@rdf:about)
    where fn:exists($node_Geodesic_0)
    return
      <xqllib:result>
        <xqllib:var name="Geodesic_0">{$value_Geodesic_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Geodesic_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Entity_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("USRPB200mini_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200mini_0"))),("USRPB200mini_0"))
