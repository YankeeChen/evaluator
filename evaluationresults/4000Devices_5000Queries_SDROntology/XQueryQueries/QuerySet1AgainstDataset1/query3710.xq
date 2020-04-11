import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RFSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RFSystem"]
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:about)
    where fn:exists($node_RFSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_SuperheterodyneReceiver_0 in $doc_ObjectDescription
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:about)
    for $node_RFSystem_0 in $node_SuperheterodyneReceiver_0/Nuvio:compositeOf
    let $value_RFSystem_0 := fn:data($node_RFSystem_0/@rdf:resource)
    where fn:exists($value_RFSystem_0) and fn:exists($node_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="RFSystem_0">{$value_RFSystem_0}</xqllib:var>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_SuperheterodyneReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SuperheterodyneReceiver"]
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:about)
    where fn:exists($node_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("SuperheterodyneReceiver_0"))
  let $GRAPH_4 := xqllib:and($GRAPH_0,$GRAPH_3,("RFSystem_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RFSystem_0"))),("RFSystem_0"))
