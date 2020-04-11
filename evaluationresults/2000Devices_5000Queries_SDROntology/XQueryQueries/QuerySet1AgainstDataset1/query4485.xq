import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SDR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#SDR"]
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:about)
    where fn:exists($node_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Jammer_0 in $doc_ObjectDescription
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:about)
    for $node_SDR_0 in $node_Jammer_0/Nuvio:compositeOf
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:resource)
    where fn:exists($node_Jammer_0) and fn:exists($value_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Jammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Jammer"]
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:about)
    where fn:exists($node_Jammer_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_PhasedArrayAntenna_0 in $doc_ObjectDescription
    let $value_PhasedArrayAntenna_0 := fn:data($node_PhasedArrayAntenna_0/@rdf:about)
    for $node_Jammer_0 in $node_PhasedArrayAntenna_0/Nuvio:compositeOf
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:resource)
    where fn:exists($value_Jammer_0) and fn:exists($node_PhasedArrayAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
        <xqllib:var name="PhasedArrayAntenna_0">{$value_PhasedArrayAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Jammer_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Jammer_0"))
  let $GRAPH_6 := xqllib:optional($GRAPH_0,$GRAPH_5,("SDR_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SDR_0"))),("SDR_0"))
