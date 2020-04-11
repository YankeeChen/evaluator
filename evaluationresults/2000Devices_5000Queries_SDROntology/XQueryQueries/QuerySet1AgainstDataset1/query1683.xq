import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ModelX_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ModelX"]
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:about)
    where fn:exists($node_ModelX_0)
    return
      <xqllib:result>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_ModelX_0 in $doc_ObjectDescription
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:about)
    for $node_DirectConversionReceiver_0 in $node_ModelX_0/Nuvio:aggregateOf
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:resource)
    where fn:exists($value_DirectConversionReceiver_0) and fn:exists($node_ModelX_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_DirectConversionReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DirectConversionReceiver"]
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:about)
    where fn:exists($node_DirectConversionReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_DirectConversionReceiver_0 in $doc_ObjectDescription
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:about)
    for $node_Entity_0 in $node_DirectConversionReceiver_0/RFDevice:hasFrequencyRange
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_DirectConversionReceiver_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Entity_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Entity_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("DirectConversionReceiver_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("DirectConversionReceiver_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("ModelX_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ModelX_0"))),("ModelX_0"))
