import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN2xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN2xx"]
    let $value_USRPN2xx_0 := fn:data($node_USRPN2xx_0/@rdf:about)
    where fn:exists($node_USRPN2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN2xx_0">{$value_USRPN2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPN2xx_0 in $node_Entity_0/RFDevice:hasMaxPowerConsumption
    let $value_USRPN2xx_0 := fn:data($node_USRPN2xx_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPN2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN2xx_0">{$value_USRPN2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Entity_0 in $node_Object_0/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0) and $node_Entity_0/Nuvio:hasProcessQuantity/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_IntegerValue_0 in $doc_ObjectDescription
    let $value_IntegerValue_0 := fn:data($node_IntegerValue_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_IntegerValue_0) and $node_IntegerValue_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="IntegerValue_0">{$value_IntegerValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_LinearRing_0 in $doc_ObjectDescription
    let $value_LinearRing_0 := fn:data($node_LinearRing_0/@rdf:about)
    for $node_Entity_0 in $node_LinearRing_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_LinearRing_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="LinearRing_0">{$value_LinearRing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_LinearRing_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#LinearRing"]
    let $value_LinearRing_0 := fn:data($node_LinearRing_0/@rdf:about)
    where fn:exists($node_LinearRing_0)
    return
      <xqllib:result>
        <xqllib:var name="LinearRing_0">{$value_LinearRing_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("LinearRing_0"))
  let $GRAPH_9 :=  
    for $node_IntegerValue_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IntegerValue"]
    let $value_IntegerValue_0 := fn:data($node_IntegerValue_0/@rdf:about)
    where fn:exists($node_IntegerValue_0)
    return
      <xqllib:result>
        <xqllib:var name="IntegerValue_0">{$value_IntegerValue_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:optional($GRAPH_8,$GRAPH_9,())
  let $GRAPH_11 := xqllib:and($GRAPH_5,$GRAPH_10,("Entity_0","IntegerValue_0"))
  let $GRAPH_12 := xqllib:optional($GRAPH_4,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := ($GRAPH_3,$GRAPH_12)
  let $GRAPH_14 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:optional($GRAPH_13,$GRAPH_14,("Object_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_1,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_0,$GRAPH_16,("USRPN2xx_0"))
  return
    $GRAPH_17
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN2xx_0"))),("USRPN2xx_0"))
