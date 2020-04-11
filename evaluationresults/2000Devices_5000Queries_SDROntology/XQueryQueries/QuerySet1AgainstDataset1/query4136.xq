import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_CR_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#CR"]
    let $value_CR_0 := fn:data($node_CR_0/@rdf:about)
    where fn:exists($node_CR_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_SuperheterodyneReceiver_0 in $doc_ObjectDescription
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:about)
    for $node_CR_0 in $node_SuperheterodyneReceiver_0/Nuvio:aggregateOf
    let $value_CR_0 := fn:data($node_CR_0/@rdf:resource)
    where fn:exists($value_CR_0) and fn:exists($node_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="CR_0">{$value_CR_0}</xqllib:var>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_SuperheterodyneReceiver_0 in $node_Object_0/Nuvio:compositeOf
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_NoiseFigure_0 in $doc_ObjectDescription
    let $value_NoiseFigure_0 := fn:data($node_NoiseFigure_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_NoiseFigure_0) and fn:exists($node_Object_0) and $node_NoiseFigure_0/RFDevice:hasVoltage/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="NoiseFigure_0">{$value_NoiseFigure_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_NoiseFigure_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NoiseFigure"]
    let $value_NoiseFigure_0 := fn:data($node_NoiseFigure_0/@rdf:about)
    where fn:exists($node_NoiseFigure_0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseFigure_0">{$value_NoiseFigure_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:optional($GRAPH_3,$GRAPH_4,("NoiseFigure_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Object_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("SuperheterodyneReceiver_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("CR_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("CR_0"))),("CR_0"))
