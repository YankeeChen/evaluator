import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN310_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN310"]
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:about)
    where fn:exists($node_USRPN310_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPN310_0 in $doc_ObjectDescription
    let $value_USRPN310_0 := fn:data($node_USRPN310_0/@rdf:about)
    for $node_Var0 in $node_USRPN310_0/RFDevice:supportsJamming
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_USRPN310_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN310_0">{$value_USRPN310_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FixedBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RangeGatePullOffJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Var0 in $node_Attribute_0/RFDevice:hasMaxSensedPower
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Attribute_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    where fn:exists($node_Attribute_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Attribute_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("Var0"))
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#Instance278"]/Nuvio:hasSubprocess
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:optional($GRAPH_8,$GRAPH_9,("Var0"))
  let $GRAPH_11 := ($GRAPH_3,$GRAPH_10)
  let $GRAPH_12 := xqllib:and($GRAPH_1,$GRAPH_11,("Var0"))
  let $GRAPH_13 := xqllib:and($GRAPH_0,$GRAPH_12,("USRPN310_0"))
  return
    $GRAPH_13
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN310_0"))),("USRPN310_0"))
