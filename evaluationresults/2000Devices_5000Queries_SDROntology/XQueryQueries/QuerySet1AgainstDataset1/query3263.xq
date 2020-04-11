import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace skos = "http://www.w3.org/2004/02/skos/core#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE3xx"]
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:about)
    where fn:exists($node_USRPE3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPE3xx_0 in $node_Var0/RFDevice:supportsSpectrumSensing
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:resource)
    where fn:exists($value_USRPE3xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpotJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.w3.org/2004/02/skos/core#OrderedCollection"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Tuning"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Var0"))
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LatitudeValueInRadian"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:optional($GRAPH_6,$GRAPH_7,("Var0"))
  let $GRAPH_9 :=  
    for $node_CompositeSolid_0 in $doc_ObjectDescription
    let $value_CompositeSolid_0 := fn:data($node_CompositeSolid_0/@rdf:about)
    for $node_Var0 in $node_CompositeSolid_0/Nuvio:relevantIndividual
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_CompositeSolid_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeSolid_0">{$value_CompositeSolid_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_CompositeSolid_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#CompositeSolid"]
    let $value_CompositeSolid_0 := fn:data($node_CompositeSolid_0/@rdf:about)
    where fn:exists($node_CompositeSolid_0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeSolid_0">{$value_CompositeSolid_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("CompositeSolid_0"))
  let $GRAPH_12 := ($GRAPH_8,$GRAPH_11)
  let $GRAPH_13 := xqllib:and($GRAPH_2,$GRAPH_12,("Var0"))
  let $GRAPH_14 := xqllib:and($GRAPH_1,$GRAPH_13,("Var0"))
  let $GRAPH_15 := xqllib:and($GRAPH_0,$GRAPH_14,("USRPE3xx_0"))
  return
    $GRAPH_15
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE3xx_0"))),("USRPE3xx_0"))
