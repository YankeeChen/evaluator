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
    for $node_USRPN2xx_0 in $node_Entity_0/RFDevice:isDeployedOn
    let $value_USRPN2xx_0 := fn:data($node_USRPN2xx_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPN2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPN2xx_0">{$value_USRPN2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#LineString"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DRFMJamming"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_Entity_0 in $node_Power_0/RFDevice:hasPulseWidth
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Power_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Power"]
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    where fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Power_0 in $node_Var0/Nuvio:hasValue
    let $value_Power_0 := fn:data($node_Power_0/@rdf:resource)
    where fn:exists($value_Power_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Power_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("Power_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_4,$GRAPH_9,("Entity_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_3,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:and($GRAPH_11,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_2,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_1,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_0,$GRAPH_17,("USRPN2xx_0"))
  return
    $GRAPH_18
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN2xx_0"))),("USRPN2xx_0"))
