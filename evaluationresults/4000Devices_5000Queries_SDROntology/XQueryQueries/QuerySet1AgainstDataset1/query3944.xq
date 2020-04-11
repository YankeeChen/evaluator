import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN3xx"]
    let $value_USRPN3xx_0 := fn:data($node_USRPN3xx_0/@rdf:about)
    where fn:exists($node_USRPN3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN3xx_0">{$value_USRPN3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPN3xx_0 in $node_Var0/Nuvio:partOf
    let $value_USRPN3xx_0 := fn:data($node_USRPN3xx_0/@rdf:resource)
    where fn:exists($value_USRPN3xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN3xx_0">{$value_USRPN3xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/RFDevice:hasBeamwidth
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    for $node_Var0 in $node_Var2/RFDevice:hasResolution
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Transceiving_0 in $node_Var0/Nuvio:hasParticipant
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:resource)
    where fn:exists($value_Transceiving_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Transceiving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiving"]
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    where fn:exists($node_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Transceiving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CoverJamming"]
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    where fn:exists($node_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Transceiving_0 in $node_Attribute_0/RFDevice:hasEffectiveRadiatedPower
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Transceiving_0"))
  let $GRAPH_10 :=  
    for $node_Transceiving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:about)
    where fn:exists($node_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_QuantityRange_0 in $doc_ObjectDescription
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:about)
    for $node_Transceiving_0 in $node_QuantityRange_0/RFDevice:hasBandwidthRange
    let $value_Transceiving_0 := fn:data($node_Transceiving_0/@rdf:resource)
    where fn:exists($node_QuantityRange_0) and fn:exists($value_Transceiving_0)
    return
      <xqllib:result>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
        <xqllib:var name="Transceiving_0">{$value_Transceiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Distance_0 in $doc_ObjectDescription
    let $value_Distance_0 := fn:data($node_Distance_0/@rdf:about)
    for $node_QuantityRange_0 in $node_Distance_0/RFDevice:hasMin
    let $value_QuantityRange_0 := fn:data($node_QuantityRange_0/@rdf:resource)
    where fn:exists($node_Distance_0) and fn:exists($value_QuantityRange_0)
    return
      <xqllib:result>
        <xqllib:var name="Distance_0">{$value_Distance_0}</xqllib:var>
        <xqllib:var name="QuantityRange_0">{$value_QuantityRange_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Distance_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Distance"]
    let $value_Distance_0 := fn:data($node_Distance_0/@rdf:about)
    where fn:exists($node_Distance_0)
    return
      <xqllib:result>
        <xqllib:var name="Distance_0">{$value_Distance_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Distance_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_11,$GRAPH_14,("QuantityRange_0"))
  let $GRAPH_16 := xqllib:optional($GRAPH_10,$GRAPH_15,("Transceiving_0"))
  let $GRAPH_17 := ($GRAPH_9,$GRAPH_16)
  let $GRAPH_18 := xqllib:optional($GRAPH_5,$GRAPH_17,("Transceiving_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_4,$GRAPH_18,("Transceiving_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_3,$GRAPH_19,("Var0"))
  let $GRAPH_21 := xqllib:and($GRAPH_2,$GRAPH_20,("Var0"))
  let $GRAPH_22 := xqllib:and($GRAPH_1,$GRAPH_21,("Var0"))
  let $GRAPH_23 := xqllib:and($GRAPH_0,$GRAPH_22,("USRPN3xx_0"))
  return
    $GRAPH_23
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN3xx_0"))),("USRPN3xx_0"))
