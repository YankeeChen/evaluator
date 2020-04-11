import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE313_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE313"]
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:about)
    where fn:exists($node_USRPE313_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPE313_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPE313_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Situation_0 in $node_Entity_0/Nuvio:expresses
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#GeometricComplex"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Entity_1) and $node_Entity_1/Nuvio:hasProcessQuality/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Entity_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Entity_0"))
  let $GRAPH_7 :=  
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_TimeUnit_0 in $doc_ObjectDescription
    let $value_TimeUnit_0 := fn:data($node_TimeUnit_0/@rdf:about)
    for $node_Situation_0 in $node_TimeUnit_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($value_Situation_0) and fn:exists($node_TimeUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
        <xqllib:var name="TimeUnit_0">{$value_TimeUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_TimeUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TimeUnit"]
    let $value_TimeUnit_0 := fn:data($node_TimeUnit_0/@rdf:about)
    where fn:exists($node_TimeUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="TimeUnit_0">{$value_TimeUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("TimeUnit_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_7,$GRAPH_10,("Situation_0"))
  let $GRAPH_12 := xqllib:optional($GRAPH_6,$GRAPH_11,("Situation_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_0,$GRAPH_13,("USRPE313_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE313_0"))),("USRPE313_0"))
