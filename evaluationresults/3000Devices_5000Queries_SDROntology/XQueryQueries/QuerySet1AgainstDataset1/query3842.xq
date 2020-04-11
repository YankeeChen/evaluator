import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB2xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB2xx"]
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:about)
    where fn:exists($node_USRPB2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPB2xx_0 in $node_Var0/Nuvio:compositeOf
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:resource)
    where fn:exists($value_USRPB2xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_Var0 in $node_Situation_0/Nuvio:isExpressedBy
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Situation_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Var1 in $node_Var0/Nuvio:hasValue
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Var0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_DigitalModulation_0 in $doc_ObjectDescription
    let $value_DigitalModulation_0 := fn:data($node_DigitalModulation_0/@rdf:about)
    for $node_Situation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_DigitalModulation_0) and fn:exists($node_Situation_0) and $node_DigitalModulation_0/Nuvio:relevantIndividual/@rdf:resource = $value_Situation_0
    return
      <xqllib:result>
        <xqllib:var name="DigitalModulation_0">{$value_DigitalModulation_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_QuadratureAmplitudeModulation_0 in $doc_ObjectDescription
    let $value_QuadratureAmplitudeModulation_0 := fn:data($node_QuadratureAmplitudeModulation_0/@rdf:about)
    for $node_Situation_0 in $node_QuadratureAmplitudeModulation_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($node_QuadratureAmplitudeModulation_0) and fn:exists($value_Situation_0)
    return
      <xqllib:result>
        <xqllib:var name="QuadratureAmplitudeModulation_0">{$value_QuadratureAmplitudeModulation_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_QuadratureAmplitudeModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#QuadratureAmplitudeModulation"]
    let $value_QuadratureAmplitudeModulation_0 := fn:data($node_QuadratureAmplitudeModulation_0/@rdf:about)
    where fn:exists($node_QuadratureAmplitudeModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="QuadratureAmplitudeModulation_0">{$value_QuadratureAmplitudeModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("QuadratureAmplitudeModulation_0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_6,$GRAPH_9,("Situation_0"))
  let $GRAPH_11 :=  
    for $node_DigitalModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DigitalModulation"]
    let $value_DigitalModulation_0 := fn:data($node_DigitalModulation_0/@rdf:about)
    where fn:exists($node_DigitalModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="DigitalModulation_0">{$value_DigitalModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := ($GRAPH_10,$GRAPH_11)
  let $GRAPH_13 := xqllib:and($GRAPH_4,$GRAPH_12,())
  let $GRAPH_14 := ($GRAPH_3,$GRAPH_13)
  let $GRAPH_15 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/SDR.owl#Freq_61_44MHz"]/RFDevice:hasSamplingRate
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := xqllib:and($GRAPH_14,$GRAPH_15,("Var0"))
  let $GRAPH_17 := xqllib:and($GRAPH_1,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_0,$GRAPH_17,("USRPB2xx_0"))
  return
    $GRAPH_18
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xx_0"))),("USRPB2xx_0"))
