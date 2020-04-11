import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPX3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPX3xx"]
    let $value_USRPX3xx_0 := fn:data($node_USRPX3xx_0/@rdf:about)
    where fn:exists($node_USRPX3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX3xx_0">{$value_USRPX3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPX3xx_0 in $node_Var0/RFDevice:supportsJamming
    let $value_USRPX3xx_0 := fn:data($node_USRPX3xx_0/@rdf:resource)
    where fn:exists($value_USRPX3xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX3xx_0">{$value_USRPX3xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_CompositeSolid_0 in $doc_ObjectDescription
    let $value_CompositeSolid_0 := fn:data($node_CompositeSolid_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_CompositeSolid_0) and fn:exists($node_Var0) and $node_CompositeSolid_0/Nuvio:hasParticipant/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="CompositeSolid_0">{$value_CompositeSolid_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_CompositeSolid_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#CompositeSolid"]
    let $value_CompositeSolid_0 := fn:data($node_CompositeSolid_0/@rdf:about)
    where fn:exists($node_CompositeSolid_0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeSolid_0">{$value_CompositeSolid_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := ($GRAPH_3,$GRAPH_4)
  let $GRAPH_6 := xqllib:and($GRAPH_1,$GRAPH_5,("Var0"))
  let $GRAPH_7 := xqllib:optional($GRAPH_0,$GRAPH_6,("USRPX3xx_0"))
  return
    $GRAPH_7
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX3xx_0"))),("USRPX3xx_0"))
