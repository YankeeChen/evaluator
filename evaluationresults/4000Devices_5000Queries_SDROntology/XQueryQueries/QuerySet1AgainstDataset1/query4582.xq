import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
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
    for $node_USRPB2xx_0 in $node_Var0/Nuvio:partOf
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:resource)
    where fn:exists($value_USRPB2xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/RFDevice:hasResolution
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Var0 in $node_InformationEntity_0/Nuvio:isExpressedBy
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_InformationEntity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_Var0 in $node_Power_0/RFDevice:hasEffectiveRadiatedPower
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Power_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    for $node_Power_0 in $node_Var2/Nuvio:hasValue
    let $value_Power_0 := fn:data($node_Power_0/@rdf:resource)
    where fn:exists($value_Power_0) and fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Power_0"))
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := ($GRAPH_8,$GRAPH_9)
  let $GRAPH_11 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := ($GRAPH_10,$GRAPH_11)
  let $GRAPH_13 := xqllib:and($GRAPH_3,$GRAPH_12,("Var0"))
  let $GRAPH_14 := xqllib:and($GRAPH_2,$GRAPH_13,("Var0"))
  let $GRAPH_15 := xqllib:and($GRAPH_1,$GRAPH_14,("Var0"))
  let $GRAPH_16 := xqllib:optional($GRAPH_0,$GRAPH_15,("USRPB2xx_0"))
  return
    $GRAPH_16
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xx_0"))),("USRPB2xx_0"))
