import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE313_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE313"]
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:about)
    where fn:exists($node_USRPE313_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPE313_0 in $node_Var0/RFDevice:hasNoiseFigure
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:resource)
    where fn:exists($value_USRPE313_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Var0 in $node_Object_0/Nuvio:expresses
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#EmitterLocationDetection"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/Nuvio:hasParticipant
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Var0"))
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#VoltageUnit"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PositiveFloatValue"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_5,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("Var0"))
  let $GRAPH_13 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_FrequencyAccuracy_0 in $node_Object_0/RFDevice:hasWidth
    let $value_FrequencyAccuracy_0 := fn:data($node_FrequencyAccuracy_0/@rdf:resource)
    where fn:exists($value_FrequencyAccuracy_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyAccuracy_0">{$value_FrequencyAccuracy_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    for $node_FrequencyAccuracy_0 in $node_Var2/Nuvio:hasValue
    let $value_FrequencyAccuracy_0 := fn:data($node_FrequencyAccuracy_0/@rdf:resource)
    where fn:exists($value_FrequencyAccuracy_0) and fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyAccuracy_0">{$value_FrequencyAccuracy_0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("FrequencyAccuracy_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_12,$GRAPH_15,("Object_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_1,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_0,$GRAPH_17,("USRPE313_0"))
  return
    $GRAPH_18
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE313_0"))),("USRPE313_0"))
