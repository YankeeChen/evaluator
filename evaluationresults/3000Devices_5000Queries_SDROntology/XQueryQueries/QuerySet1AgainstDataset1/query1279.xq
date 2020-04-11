import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN200_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN200"]
    let $value_USRPN200_0 := fn:data($node_USRPN200_0/@rdf:about)
    where fn:exists($node_USRPN200_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN200_0">{$value_USRPN200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPN200_0 in $node_Var0/Nuvio:partOf
    let $value_USRPN200_0 := fn:data($node_USRPN200_0/@rdf:resource)
    where fn:exists($value_USRPN200_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN200_0">{$value_USRPN200_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ADC"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_WhipAntenna_0 in $doc_ObjectDescription
    let $value_WhipAntenna_0 := fn:data($node_WhipAntenna_0/@rdf:about)
    for $node_Var0 in $node_WhipAntenna_0/Nuvio:compositeOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_WhipAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="WhipAntenna_0">{$value_WhipAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_WhipAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#WhipAntenna"]
    let $value_WhipAntenna_0 := fn:data($node_WhipAntenna_0/@rdf:about)
    where fn:exists($node_WhipAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="WhipAntenna_0">{$value_WhipAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_WhipAntenna_0 in $node_Var1/RFDevice:hasCapability
    let $value_WhipAntenna_0 := fn:data($node_WhipAntenna_0/@rdf:resource)
    where fn:exists($node_Var1) and fn:exists($value_WhipAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
        <xqllib:var name="WhipAntenna_0">{$value_WhipAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_InformationContent_0 in $doc_ObjectDescription
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_InformationContent_0) and fn:exists($node_Var1) and $node_InformationContent_0/Nuvio:isExpressedBy/@rdf:resource = $value_Var1
    return
      <xqllib:result>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#OnOffKeyingModulation"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Quality_0 in $doc_ObjectDescription
    let $value_Quality_0 := fn:data($node_Quality_0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Quality_0) and fn:exists($node_Var1) and $node_Quality_0/Nuvio:hasProcessQuality/@rdf:resource = $value_Var1
    return
      <xqllib:result>
        <xqllib:var name="Quality_0">{$value_Quality_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Var1"))
  let $GRAPH_10 :=  
    for $node_InformationContent_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationContent"]
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_InformationContent_0) and fn:exists($node_Var1) and $node_Var1/Nuvio:represents/@rdf:resource = $value_InformationContent_0
    return
      <xqllib:result>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Var1"))
  let $GRAPH_12 := xqllib:and($GRAPH_6,$GRAPH_11,("InformationContent_0","Var1"))
  let $GRAPH_13 := xqllib:and($GRAPH_5,$GRAPH_12,("Var1"))
  let $GRAPH_14 := xqllib:optional($GRAPH_4,$GRAPH_13,("WhipAntenna_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_3,$GRAPH_14,("WhipAntenna_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_2,$GRAPH_15,("Var0"))
  let $GRAPH_17 := xqllib:and($GRAPH_1,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_0,$GRAPH_17,("USRPN200_0"))
  return
    $GRAPH_18
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN200_0"))),("USRPN200_0"))
