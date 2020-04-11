import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB205mini_i_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB205mini-i"]
    let $value_USRPB205mini_i_0 := fn:data($node_USRPB205mini_i_0/@rdf:about)
    where fn:exists($node_USRPB205mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB205mini_i_0">{$value_USRPB205mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPB205mini_i_0 in $node_Var0/RFDevice:supportsTuning
    let $value_USRPB205mini_i_0 := fn:data($node_USRPB205mini_i_0/@rdf:resource)
    where fn:exists($value_USRPB205mini_i_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB205mini_i_0">{$value_USRPB205mini_i_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Var1 in $node_Var0/Nuvio:hasProcessQuantity
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Var0) and fn:exists($value_Var1)
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
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PulseDopplerRadar"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Var1 in $node_Object_0/RFDevice:isProducerOf
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_Object_0) and $doc_ObjectDescription[@rdf:ID = "Weight_instance7"]/RFDevice:hasSamplingRate/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Object_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("Var1"))
  let $GRAPH_10 :=  
    for $node_OrientableCurve_0 in $doc_ObjectDescription
    let $value_OrientableCurve_0 := fn:data($node_OrientableCurve_0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_OrientableCurve_0) and fn:exists($node_Var1) and $node_OrientableCurve_0/Nuvio:isExpressedBy/@rdf:resource = $value_Var1
    return
      <xqllib:result>
        <xqllib:var name="OrientableCurve_0">{$value_OrientableCurve_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_OrientableCurve_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#OrientableCurve"]
    let $value_OrientableCurve_0 := fn:data($node_OrientableCurve_0/@rdf:about)
    where fn:exists($node_OrientableCurve_0)
    return
      <xqllib:result>
        <xqllib:var name="OrientableCurve_0">{$value_OrientableCurve_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := ($GRAPH_10,$GRAPH_11)
  let $GRAPH_13 := xqllib:and($GRAPH_8,$GRAPH_12,("Var1"))
  let $GRAPH_14 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("Var1"))
  let $GRAPH_16 := xqllib:optional($GRAPH_3,$GRAPH_15,("Var1"))
  let $GRAPH_17 := xqllib:and($GRAPH_2,$GRAPH_16,("Var1"))
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("Var0"))
  let $GRAPH_19 := xqllib:and($GRAPH_0,$GRAPH_18,("USRPB205mini_i_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB205mini_i_0"))),("USRPB205mini_i_0"))
