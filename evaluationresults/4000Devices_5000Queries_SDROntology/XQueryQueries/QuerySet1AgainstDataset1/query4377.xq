import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN300_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN300"]
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:about)
    where fn:exists($node_USRPN300_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPN300_0 in $doc_ObjectDescription
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:about)
    for $node_Var0 in $node_USRPN300_0/RFDevice:supportsSpectrumSensing
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_USRPN300_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Weight_instance54"]/RFDevice:hasPulseWidth
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiving"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Producer_0 in $node_Var0/RFDevice:hasProducer
    let $value_Producer_0 := fn:data($node_Producer_0/@rdf:resource)
    where fn:exists($value_Producer_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Producer_0">{$value_Producer_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Role_0 in $doc_ObjectDescription
    let $value_Role_0 := fn:data($node_Role_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Role_0) and fn:exists($node_Var0) and $node_Role_0/Nuvio:relevantIndividual/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Role_0">{$value_Role_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Role_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Role"]
    let $value_Role_0 := fn:data($node_Role_0/@rdf:about)
    where fn:exists($node_Role_0)
    return
      <xqllib:result>
        <xqllib:var name="Role_0">{$value_Role_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Role_0"))
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyScanRate"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_5,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:and($GRAPH_4,$GRAPH_11,("Var0"))
  let $GRAPH_13 := xqllib:and($GRAPH_3,$GRAPH_12,("Var0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_2,$GRAPH_13,("Var0"))
  let $GRAPH_15 := xqllib:and($GRAPH_1,$GRAPH_14,("Var0"))
  let $GRAPH_16 := xqllib:and($GRAPH_0,$GRAPH_15,("USRPN300_0"))
  return
    $GRAPH_16
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN300_0"))),("USRPN300_0"))
