import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace geosparql = "http://www.opengis.net/ont/geosparql#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPX3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPX3xx"]
    let $value_USRPX3xx_0 := fn:data($node_USRPX3xx_0/@rdf:about)
    where fn:exists($node_USRPX3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX3xx_0">{$value_USRPX3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPX3xx_0 in $node_Entity_0/RFDevice:hasSamplingRate
    let $value_USRPX3xx_0 := fn:data($node_USRPX3xx_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPX3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPX3xx_0">{$value_USRPX3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Situation_0) and $node_Situation_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Feature_0 in $doc_ObjectDescription
    let $value_Feature_0 := fn:data($node_Feature_0/@rdf:about)
    for $node_Situation_0 in $node_Feature_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_Feature_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="Feature_0">{$value_Feature_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Feature_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/geosparql#Feature"]
    let $value_Feature_0 := fn:data($node_Feature_0/@rdf:about)
    for $node_MultiSolid_0 in $doc_ObjectDescription
    let $value_MultiSolid_0 := fn:data($node_MultiSolid_0/@rdf:about)
    where fn:exists($node_Feature_0) and fn:exists($node_MultiSolid_0) and $node_MultiSolid_0/geosparql:hasGeometry/@rdf:resource = $value_Feature_0
    return
      <xqllib:result>
        <xqllib:var name="Feature_0">{$value_Feature_0}</xqllib:var>
        <xqllib:var name="MultiSolid_0">{$value_MultiSolid_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Feature_0"))
  let $GRAPH_7 := xqllib:and($GRAPH_3,$GRAPH_6,("Situation_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_2,$GRAPH_7,("Situation_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_1,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_0,$GRAPH_9,("USRPX3xx_0"))
  return
    $GRAPH_10
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX3xx_0"))),("USRPX3xx_0"))
