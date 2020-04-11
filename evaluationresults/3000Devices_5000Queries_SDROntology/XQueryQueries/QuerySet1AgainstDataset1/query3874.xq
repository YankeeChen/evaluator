import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_JammingSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#JammingSystem"]
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:about)
    where fn:exists($node_JammingSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_BlinkingJamming_0 in $doc_ObjectDescription
    let $value_BlinkingJamming_0 := fn:data($node_BlinkingJamming_0/@rdf:about)
    for $node_JammingSystem_0 in $node_BlinkingJamming_0/RFDevice:supportsJamming
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:resource)
    where fn:exists($node_BlinkingJamming_0) and fn:exists($value_JammingSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="BlinkingJamming_0">{$value_BlinkingJamming_0}</xqllib:var>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_BlinkingJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BlinkingJamming"]
    let $value_BlinkingJamming_0 := fn:data($node_BlinkingJamming_0/@rdf:about)
    where fn:exists($node_BlinkingJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="BlinkingJamming_0">{$value_BlinkingJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_BlinkingJamming_0 in $node_Attribute_0/RFDevice:hasPulseRepetitionInterval
    let $value_BlinkingJamming_0 := fn:data($node_BlinkingJamming_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_BlinkingJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="BlinkingJamming_0">{$value_BlinkingJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Attribute_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("BlinkingJamming_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("BlinkingJamming_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_0,$GRAPH_7,("JammingSystem_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("JammingSystem_0"))),("JammingSystem_0"))
