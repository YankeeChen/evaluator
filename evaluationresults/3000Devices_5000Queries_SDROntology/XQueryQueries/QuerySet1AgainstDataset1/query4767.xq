import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
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
    for $node_MobilePlatform_0 in $doc_ObjectDescription
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:about)
    for $node_JammingSystem_0 in $node_MobilePlatform_0/RFDevice:isDeployedOn
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:resource)
    where fn:exists($value_JammingSystem_0) and fn:exists($node_MobilePlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_MobilePlatform_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#MobilePlatform"]
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:about)
    where fn:exists($node_MobilePlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_MobilePlatform_0 in $node_Entity_0/RFDevice:supportsJamming
    let $value_MobilePlatform_0 := fn:data($node_MobilePlatform_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_MobilePlatform_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="MobilePlatform_0">{$value_MobilePlatform_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Value_0 in $node_Entity_0/Nuvio:expresses
    let $value_Value_0 := fn:data($node_Value_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Value_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#CR"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AutomaticGainControl"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Entity_0"))
  let $GRAPH_8 :=  
    for $node_Value_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    where fn:exists($node_Value_0)
    return
      <xqllib:result>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,())
  let $GRAPH_10 := xqllib:and($GRAPH_4,$GRAPH_9,("Entity_0","Value_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_3,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("MobilePlatform_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("MobilePlatform_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_0,$GRAPH_13,("JammingSystem_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("JammingSystem_0"))),("JammingSystem_0"))
