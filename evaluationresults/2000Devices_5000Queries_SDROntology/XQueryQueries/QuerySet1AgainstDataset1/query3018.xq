import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
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
    for $node_USRPE3xx_0 in $node_Var0/RFDevice:supportsTuning
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:resource)
    where fn:exists($value_USRPE3xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/RFDevice:hasEffectiveRadiatedPower
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiver"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_Var1 in $node_Quantity_0/RFDevice:hasMaxSensedPower
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Quantity_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Quantity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Quantity"]
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    where fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Quantity_0"))
  let $GRAPH_9 :=  
    for $node_Battery_0 in $doc_ObjectDescription
    let $value_Battery_0 := fn:data($node_Battery_0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Battery_0) and fn:exists($node_Var1) and $node_Battery_0/Nuvio:relevantIndividual/@rdf:resource = $value_Var1
    return
      <xqllib:result>
        <xqllib:var name="Battery_0">{$value_Battery_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_XilinxZynq7100SoC_0 in $doc_ObjectDescription
    let $value_XilinxZynq7100SoC_0 := fn:data($node_XilinxZynq7100SoC_0/@rdf:about)
    for $node_Var1 in $node_XilinxZynq7100SoC_0/Nuvio:relevantIndividual
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($value_Var1) and fn:exists($node_XilinxZynq7100SoC_0)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
        <xqllib:var name="XilinxZynq7100SoC_0">{$value_XilinxZynq7100SoC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_XilinxZynq7100SoC_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XilinxZynq7100SoC"]
    let $value_XilinxZynq7100SoC_0 := fn:data($node_XilinxZynq7100SoC_0/@rdf:about)
    where fn:exists($node_XilinxZynq7100SoC_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxZynq7100SoC_0">{$value_XilinxZynq7100SoC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_XilinxZynq7100SoC_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription2000.owl#Producer_instance330"]/RFDevice:hasProducer
    let $value_XilinxZynq7100SoC_0 := fn:data($node_XilinxZynq7100SoC_0/@rdf:resource)
    where fn:exists($value_XilinxZynq7100SoC_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxZynq7100SoC_0">{$value_XilinxZynq7100SoC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:optional($GRAPH_11,$GRAPH_12,("XilinxZynq7100SoC_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_10,$GRAPH_13,("XilinxZynq7100SoC_0"))
  let $GRAPH_15 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Battery_0 in $node_Entity_0/RFDevice:hasMaxPowerConsumption
    let $value_Battery_0 := fn:data($node_Battery_0/@rdf:resource)
    where fn:exists($value_Battery_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Battery_0">{$value_Battery_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := xqllib:and($GRAPH_14,$GRAPH_15,())
  let $GRAPH_17 := ($GRAPH_9,$GRAPH_16)
  let $GRAPH_18 := xqllib:and($GRAPH_7,$GRAPH_17,("Var1"))
  let $GRAPH_19 := xqllib:optional($GRAPH_4,$GRAPH_18,("Var1"))
  let $GRAPH_20 := xqllib:optional($GRAPH_3,$GRAPH_19,("Var1"))
  let $GRAPH_21 := xqllib:and($GRAPH_2,$GRAPH_20,("Var1"))
  let $GRAPH_22 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SelfProtectionJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 := xqllib:and($GRAPH_21,$GRAPH_22,("Var0"))
  let $GRAPH_24 := xqllib:and($GRAPH_1,$GRAPH_23,("Var0"))
  let $GRAPH_25 := xqllib:and($GRAPH_0,$GRAPH_24,("USRPE3xx_0"))
  return
    $GRAPH_25
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE3xx_0"))),("USRPE3xx_0"))
