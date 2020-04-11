import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200"]
    let $value_USRPB200_0 := fn:data($node_USRPB200_0/@rdf:about)
    where fn:exists($node_USRPB200_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_0">{$value_USRPB200_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPB200_0 in $node_Var0/RFDevice:supportsJamming
    let $value_USRPB200_0 := fn:data($node_USRPB200_0/@rdf:resource)
    where fn:exists($value_USRPB200_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200_0">{$value_USRPB200_0}</xqllib:var>
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
    for $node_Transceiver_0 in $doc_ObjectDescription
    let $value_Transceiver_0 := fn:data($node_Transceiver_0/@rdf:about)
    for $node_Var0 in $node_Transceiver_0/Nuvio:compositeOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Transceiver_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiver_0">{$value_Transceiver_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Transceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Transceiver"]
    let $value_Transceiver_0 := fn:data($node_Transceiver_0/@rdf:about)
    where fn:exists($node_Transceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiver_0">{$value_Transceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Transceiver_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription3000.owl#Producer_instance754"]/RFDevice:hasProducer
    let $value_Transceiver_0 := fn:data($node_Transceiver_0/@rdf:resource)
    where fn:exists($value_Transceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="Transceiver_0">{$value_Transceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := ($GRAPH_5,$GRAPH_6)
  let $GRAPH_8 := xqllib:and($GRAPH_3,$GRAPH_7,("Transceiver_0"))
  let $GRAPH_9 :=  
    for $node_UnitOfMeasure_0 in $doc_ObjectDescription
    let $value_UnitOfMeasure_0 := fn:data($node_UnitOfMeasure_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_UnitOfMeasure_0) and fn:exists($node_Var0) and $node_UnitOfMeasure_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="UnitOfMeasure_0">{$value_UnitOfMeasure_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_UnitOfMeasure_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_UnitOfMeasure_0 := fn:data($node_UnitOfMeasure_0/@rdf:about)
    where fn:exists($node_UnitOfMeasure_0)
    return
      <xqllib:result>
        <xqllib:var name="UnitOfMeasure_0">{$value_UnitOfMeasure_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:optional($GRAPH_9,$GRAPH_10,("UnitOfMeasure_0"))
  let $GRAPH_12 :=  
    for $node_OrientableCurve_0 in $doc_ObjectDescription
    let $value_OrientableCurve_0 := fn:data($node_OrientableCurve_0/@rdf:about)
    for $node_Var0 in $node_OrientableCurve_0/Nuvio:relevantIndividual
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_OrientableCurve_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="OrientableCurve_0">{$value_OrientableCurve_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription3000.owl#USRPE312_instance61"]/Nuvio:relevantIndividual
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Var0"))
  let $GRAPH_15 := xqllib:and($GRAPH_11,$GRAPH_14,("Var0"))
  let $GRAPH_16 := xqllib:and($GRAPH_8,$GRAPH_15,("Var0"))
  let $GRAPH_17 := xqllib:and($GRAPH_2,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("Var0"))
  let $GRAPH_19 := xqllib:and($GRAPH_0,$GRAPH_18,("USRPB200_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200_0"))),("USRPB200_0"))
