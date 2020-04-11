import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_BistaticRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BistaticRadar"]
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:about)
    where fn:exists($node_BistaticRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_BistaticRadar_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_BistaticRadar_0 := fn:data($node_BistaticRadar_0/@rdf:resource)
    where fn:exists($value_BistaticRadar_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="BistaticRadar_0">{$value_BistaticRadar_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription3000.owl#Antenna_instance6"]/Nuvio:partOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AdjustableBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_XilinxFPGA_0 in $node_Var0/Nuvio:relevantIndividual
    let $value_XilinxFPGA_0 := fn:data($node_XilinxFPGA_0/@rdf:resource)
    where fn:exists($node_Var0) and fn:exists($value_XilinxFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="XilinxFPGA_0">{$value_XilinxFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_XilinxFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XilinxFPGA"]
    let $value_XilinxFPGA_0 := fn:data($node_XilinxFPGA_0/@rdf:about)
    where fn:exists($node_XilinxFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxFPGA_0">{$value_XilinxFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Mixer_0 in $doc_ObjectDescription
    let $value_Mixer_0 := fn:data($node_Mixer_0/@rdf:about)
    for $node_XilinxFPGA_0 in $node_Mixer_0/Nuvio:compositeOf
    let $value_XilinxFPGA_0 := fn:data($node_XilinxFPGA_0/@rdf:resource)
    where fn:exists($node_Mixer_0) and fn:exists($value_XilinxFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Mixer_0">{$value_Mixer_0}</xqllib:var>
        <xqllib:var name="XilinxFPGA_0">{$value_XilinxFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Mixer_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription3000.owl#Producer_instance590"]/RFDevice:isProducerOf
    let $value_Mixer_0 := fn:data($node_Mixer_0/@rdf:resource)
    where fn:exists($value_Mixer_0)
    return
      <xqllib:result>
        <xqllib:var name="Mixer_0">{$value_Mixer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Mixer_0 in $node_Entity_0/RFDevice:isProducerOf
    let $value_Mixer_0 := fn:data($node_Mixer_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Mixer_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Mixer_0">{$value_Mixer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Mixer_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_8,$GRAPH_11,("Mixer_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_7,$GRAPH_12,("XilinxFPGA_0"))
  let $GRAPH_14 := xqllib:optional($GRAPH_6,$GRAPH_13,("XilinxFPGA_0"))
  let $GRAPH_15 := ($GRAPH_5,$GRAPH_14)
  let $GRAPH_16 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := xqllib:and($GRAPH_15,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_3,$GRAPH_17,("Var0"))
  let $GRAPH_19 := xqllib:and($GRAPH_2,$GRAPH_18,("Var0"))
  let $GRAPH_20 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#BlinkingJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 := xqllib:and($GRAPH_19,$GRAPH_20,("Var0"))
  let $GRAPH_22 := xqllib:and($GRAPH_1,$GRAPH_21,("Var0"))
  let $GRAPH_23 := xqllib:and($GRAPH_0,$GRAPH_22,("BistaticRadar_0"))
  return
    $GRAPH_23
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("BistaticRadar_0"))),("BistaticRadar_0"))
