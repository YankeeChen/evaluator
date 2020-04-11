import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
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
    for $node_SuperheterodyneReceiver_0 in $doc_ObjectDescription
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:about)
    for $node_BistaticRadar_0 in $node_SuperheterodyneReceiver_0/Nuvio:compositeOf
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:resource)
    where fn:exists($value_BistaticRadar_0) and fn:exists($node_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
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
  let $GRAPH_3 :=  
    for $node_DAC_0 in $doc_ObjectDescription
    let $value_DAC_0 := fn:data($node_DAC_0/@rdf:about)
    for $node_SuperheterodyneReceiver_0 in $node_DAC_0/Nuvio:partOf
    let $value_SuperheterodyneReceiver_0 := fn:data($node_SuperheterodyneReceiver_0/@rdf:resource)
    where fn:exists($node_DAC_0) and fn:exists($value_SuperheterodyneReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="DAC_0">{$value_DAC_0}</xqllib:var>
        <xqllib:var name="SuperheterodyneReceiver_0">{$value_SuperheterodyneReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_DAC_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DAC"]
    let $value_DAC_0 := fn:data($node_DAC_0/@rdf:about)
    where fn:exists($node_DAC_0)
    return
      <xqllib:result>
        <xqllib:var name="DAC_0">{$value_DAC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_DAC_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Producer_instance303"]/RFDevice:hasProducer
    let $value_DAC_0 := fn:data($node_DAC_0/@rdf:resource)
    where fn:exists($value_DAC_0)
    return
      <xqllib:result>
        <xqllib:var name="DAC_0">{$value_DAC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("DAC_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("DAC_0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_2,$GRAPH_7,("SuperheterodyneReceiver_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("SuperheterodyneReceiver_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("BistaticRadar_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("BistaticRadar_0"))),("BistaticRadar_0"))
