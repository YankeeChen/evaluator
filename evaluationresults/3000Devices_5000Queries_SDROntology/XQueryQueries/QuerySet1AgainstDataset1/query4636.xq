import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPX3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPX3xx"]
    let $value_USRPX3xx_0 := fn:data($node_USRPX3xx_0/@rdf:about)
    where fn:exists($node_USRPX3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX3xx_0">{$value_USRPX3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPX3xx_0 in $node_Var0/RFDevice:supportsJamming
    let $value_USRPX3xx_0 := fn:data($node_USRPX3xx_0/@rdf:resource)
    where fn:exists($value_USRPX3xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPX3xx_0">{$value_USRPX3xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpectrumSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_Var0 in $node_Quantity_0/RFDevice:hasBandwidth
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Quantity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Var0"))
  let $GRAPH_5 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_Var0 in $node_Power_0/RFDevice:hasPulseWidth
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Power_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
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
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Power_0 in $node_Var1/Nuvio:hasValue
    let $value_Power_0 := fn:data($node_Power_0/@rdf:resource)
    where fn:exists($value_Power_0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Process_0) and fn:exists($node_Var1) and $node_Process_0/Nuvio:expresses/@rdf:resource = $value_Var1
    return
      <xqllib:result>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:optional($GRAPH_8,$GRAPH_9,("Var1"))
  let $GRAPH_11 :=  
    for $node_Detection_0 in $doc_ObjectDescription
    let $value_Detection_0 := fn:data($node_Detection_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_Detection_0) and fn:exists($node_Process_0) and $node_Detection_0/Nuvio:hasSubprocess/@rdf:resource = $value_Process_0
    return
      <xqllib:result>
        <xqllib:var name="Detection_0">{$value_Detection_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("Process_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_7,$GRAPH_12,("Var1"))
  let $GRAPH_14 := xqllib:and($GRAPH_6,$GRAPH_13,("Power_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_5,$GRAPH_14,("Power_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_4,$GRAPH_15,("Var0"))
  let $GRAPH_17 := xqllib:and($GRAPH_1,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_0,$GRAPH_17,("USRPX3xx_0"))
  return
    $GRAPH_18
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPX3xx_0"))),("USRPX3xx_0"))
