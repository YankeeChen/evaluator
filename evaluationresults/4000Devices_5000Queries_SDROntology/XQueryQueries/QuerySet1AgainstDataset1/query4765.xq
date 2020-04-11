import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace sf = "http://www.opengis.net/ont/sf#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB210_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB210"]
    let $value_USRPB210_0 := fn:data($node_USRPB210_0/@rdf:about)
    where fn:exists($node_USRPB210_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB210_0">{$value_USRPB210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPB210_0 in $node_Entity_0/Nuvio:partOf
    let $value_USRPB210_0 := fn:data($node_USRPB210_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPB210_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPB210_0">{$value_USRPB210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Polygon_0 in $node_Entity_0/Nuvio:relevantIndividual
    let $value_Polygon_0 := fn:data($node_Polygon_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Polygon_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Polygon_0">{$value_Polygon_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Polygon_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/sf#Polygon"]
    let $value_Polygon_0 := fn:data($node_Polygon_0/@rdf:about)
    where fn:exists($node_Polygon_0)
    return
      <xqllib:result>
        <xqllib:var name="Polygon_0">{$value_Polygon_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Polygon_0"))
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 := ($GRAPH_3,$GRAPH_8)
  let $GRAPH_10 := xqllib:and($GRAPH_1,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_0,$GRAPH_10,("USRPB210_0"))
  return
    $GRAPH_11
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB210_0"))),("USRPB210_0"))
