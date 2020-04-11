import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
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
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPN2xx_0 in $node_Var0/RFDevice:supportsSpectrumSensing
    let $value_USRPN2xx_0 := fn:data($node_USRPN2xx_0/@rdf:resource)
    where fn:exists($value_USRPN2xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN2xx_0">{$value_USRPN2xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FixedBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#System"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Ship_0 in $doc_ObjectDescription
    let $value_Ship_0 := fn:data($node_Ship_0/@rdf:about)
    for $node_Var0 in $node_Ship_0/RFDevice:isDeployedOn
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Ship_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Ship_0">{$value_Ship_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Ship_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Ship"]
    let $value_Ship_0 := fn:data($node_Ship_0/@rdf:about)
    where fn:exists($node_Ship_0)
    return
      <xqllib:result>
        <xqllib:var name="Ship_0">{$value_Ship_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Ship_0"))
  let $GRAPH_10 := ($GRAPH_6,$GRAPH_9)
  let $GRAPH_11 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Frequency"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Gain_0 in $node_Var0/RFDevice:hasMaxOutputPower
    let $value_Gain_0 := fn:data($node_Gain_0/@rdf:resource)
    where fn:exists($value_Gain_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Gain_0">{$value_Gain_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Gain_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Gain"]
    let $value_Gain_0 := fn:data($node_Gain_0/@rdf:about)
    where fn:exists($node_Gain_0)
    return
      <xqllib:result>
        <xqllib:var name="Gain_0">{$value_Gain_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Gain_0 in $node_Var1/Nuvio:hasValue
    let $value_Gain_0 := fn:data($node_Gain_0/@rdf:resource)
    where fn:exists($value_Gain_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Gain_0">{$value_Gain_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("Gain_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_12,$GRAPH_15,("Gain_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_11,$GRAPH_16,("Var0"))
  let $GRAPH_18 := ($GRAPH_10,$GRAPH_17)
  let $GRAPH_19 := xqllib:and($GRAPH_3,$GRAPH_18,("Var0"))
  let $GRAPH_20 := xqllib:and($GRAPH_2,$GRAPH_19,("Var0"))
  let $GRAPH_21 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveCommunicationsJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 :=  
    for $node_Attribute_0 in $doc_ObjectDescription
    let $value_Attribute_0 := fn:data($node_Attribute_0/@rdf:about)
    for $node_Var0 in $node_Attribute_0/RFDevice:hasPulseWidth
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Attribute_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Attribute_0">{$value_Attribute_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 := xqllib:and($GRAPH_21,$GRAPH_22,("Var0"))
  let $GRAPH_24 := xqllib:and($GRAPH_20,$GRAPH_23,("Var0"))
  let $GRAPH_25 := xqllib:and($GRAPH_1,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_0,$GRAPH_25,("USRPN2xx_0"))
  return
    $GRAPH_26
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN2xx_0"))),("USRPN2xx_0"))
