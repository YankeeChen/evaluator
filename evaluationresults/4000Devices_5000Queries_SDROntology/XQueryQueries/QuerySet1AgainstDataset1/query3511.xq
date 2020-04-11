import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
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
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_ModelX_0 in $node_Process_0/RFDevice:supportsSpectrumSensing
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:resource)
    where fn:exists($value_ModelX_0) and fn:exists($node_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_NoiseJamming_0 in $doc_ObjectDescription
    let $value_NoiseJamming_0 := fn:data($node_NoiseJamming_0/@rdf:about)
    for $node_Process_0 in $node_NoiseJamming_0/Nuvio:subprocessOf
    let $value_Process_0 := fn:data($node_Process_0/@rdf:resource)
    where fn:exists($node_NoiseJamming_0) and fn:exists($value_Process_0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseJamming_0">{$value_NoiseJamming_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_NoiseJamming_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Power_instance70"]/RFDevice:hasPulseRepetitionInterval
    let $value_NoiseJamming_0 := fn:data($node_NoiseJamming_0/@rdf:resource)
    where fn:exists($value_NoiseJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseJamming_0">{$value_NoiseJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := ($GRAPH_3,$GRAPH_4)
  let $GRAPH_6 := xqllib:and($GRAPH_1,$GRAPH_5,("Process_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_0,$GRAPH_6,("ModelX_0"))
  return
    $GRAPH_7
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ModelX_0"))),("ModelX_0"))
