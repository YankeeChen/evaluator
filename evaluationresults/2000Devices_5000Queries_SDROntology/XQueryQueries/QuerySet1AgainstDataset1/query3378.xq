import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RadarSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarSystem"]
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:about)
    where fn:exists($node_RadarSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Weight_0 in $doc_ObjectDescription
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:about)
    for $node_RadarSystem_0 in $node_Weight_0/RFDevice:hasLevel
    let $value_RadarSystem_0 := fn:data($node_RadarSystem_0/@rdf:resource)
    where fn:exists($value_RadarSystem_0) and fn:exists($node_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarSystem_0">{$value_RadarSystem_0}</xqllib:var>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Weight_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Weight"]
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:about)
    where fn:exists($node_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Weight_0 in $node_Var0/Nuvio:hasValue
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:resource)
    where fn:exists($node_Var0) and fn:exists($value_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:optional($GRAPH_2,$GRAPH_3,("Weight_0"))
  let $GRAPH_5 := xqllib:and($GRAPH_1,$GRAPH_4,("Weight_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_0,$GRAPH_5,("RadarSystem_0"))
  return
    $GRAPH_6
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarSystem_0"))),("RadarSystem_0"))
