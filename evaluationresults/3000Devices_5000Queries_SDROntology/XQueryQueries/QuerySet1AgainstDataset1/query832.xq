import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
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
    for $node_SDR_0 in $doc_ObjectDescription
    let $value_SDR_0 := fn:data($node_SDR_0/@rdf:about)
    for $node_Jammer_0 in $node_SDR_0/Nuvio:partOf
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:resource)
    where fn:exists($value_Jammer_0) and fn:exists($node_SDR_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
        <xqllib:var name="SDR_0">{$value_SDR_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Jammer_0 in $node_Object_0/RFDevice:hasFrequencyRange
    let $value_Jammer_0 := fn:data($node_Jammer_0/@rdf:resource)
    where fn:exists($value_Jammer_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Jammer_0">{$value_Jammer_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_ElectronicProtection_0 in $doc_ObjectDescription
    let $value_ElectronicProtection_0 := fn:data($node_ElectronicProtection_0/@rdf:about)
    for $node_Object_0 in $node_ElectronicProtection_0/Nuvio:hasParticipant
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($node_ElectronicProtection_0) and fn:exists($value_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicProtection_0">{$value_ElectronicProtection_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_ElectronicProtection_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicProtection"]
    let $value_ElectronicProtection_0 := fn:data($node_ElectronicProtection_0/@rdf:about)
    where fn:exists($node_ElectronicProtection_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicProtection_0">{$value_ElectronicProtection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := ($GRAPH_4,$GRAPH_5)
  let $GRAPH_7 := xqllib:and($GRAPH_2,$GRAPH_6,("Object_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_1,$GRAPH_7,("Jammer_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_0,$GRAPH_8,("SDR_0"))
  return
    $GRAPH_9
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SDR_0"))),("SDR_0"))
