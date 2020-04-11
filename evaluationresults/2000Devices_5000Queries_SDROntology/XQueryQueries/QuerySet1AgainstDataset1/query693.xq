import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_BistaticRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BistaticRadar"]
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:about)
    where fn:exists($node_BistaticRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_IEDJammer_0 in $doc_ObjectDescription
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    for $node_BistaticRadar_0 in $node_IEDJammer_0/Nuvio:compositeOf
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:resource)
    where fn:exists($value_BistaticRadar_0) and fn:exists($node_IEDJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_IEDJammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IEDJammer"]
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:about)
    where fn:exists($node_IEDJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Transceiving_0 in $doc_ObjectDescription
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    for $node_IEDJammer_0 in $node_Transceiving_0/RFDevice:supportsTransmitting
    let $value_IEDJammer_0 := fn:data($node_IEDJammer_0/@rdf:resource)
    where fn:exists($value_IEDJammer_0) and fn:exists($node_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="IEDJammer_0">{$value_IEDJammer_0}</xqllib:var>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("IEDJammer_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("IEDJammer_0"))
  let $GRAPH_6 := xqllib:optional($GRAPH_0,$GRAPH_5,("BistaticRadar_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("BistaticRadar_0"))),("BistaticRadar_0"))
