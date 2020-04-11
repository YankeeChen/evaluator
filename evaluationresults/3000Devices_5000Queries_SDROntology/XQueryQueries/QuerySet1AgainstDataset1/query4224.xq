import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace skos = "http://www.w3.org/2004/02/skos/core#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB210_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB210"]
    let $value_USRPB210_0 := fn:data($node_USRPB210_0/@rdf:about)
    where fn:exists($node_USRPB210_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB210_0">{$value_USRPB210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPB210_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_USRPB210_0 := fn:data($node_USRPB210_0/@rdf:resource)
    where fn:exists($value_USRPB210_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB210_0">{$value_USRPB210_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TerrainBounceJamming"]
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
  let $GRAPH_4 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/Nuvio:aggregateOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    for $node_Var1 in $node_Var2/RFDevice:hasResolution
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($value_Var1) and fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Var1"))
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CommunicationsJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Var0"))
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("Var0"))
  let $GRAPH_11 :=  
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    for $node_Var0 in $node_Situation_0/Nuvio:subprocessOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Situation_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Var0 in $node_InformationEntity_0/Nuvio:represents
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_InformationEntity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_OrderedCollection_0 in $doc_ObjectDescription
    let $value_OrderedCollection_0 := fn:data($node_OrderedCollection_0/@rdf:about)
    for $node_InformationEntity_0 in $node_OrderedCollection_0/Nuvio:expresses
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:resource)
    where fn:exists($value_InformationEntity_0) and fn:exists($node_OrderedCollection_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="OrderedCollection_0">{$value_OrderedCollection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_OrderedCollection_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.w3.org/2004/02/skos/core#OrderedCollection"]
    let $value_OrderedCollection_0 := fn:data($node_OrderedCollection_0/@rdf:about)
    where fn:exists($node_OrderedCollection_0)
    return
      <xqllib:result>
        <xqllib:var name="OrderedCollection_0">{$value_OrderedCollection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("OrderedCollection_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_12,$GRAPH_15,("InformationEntity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_11,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_10,$GRAPH_17,("Var0"))
  let $GRAPH_19 := xqllib:and($GRAPH_3,$GRAPH_18,("Var0"))
  let $GRAPH_20 := xqllib:optional($GRAPH_2,$GRAPH_19,("Var0"))
  let $GRAPH_21 := xqllib:and($GRAPH_1,$GRAPH_20,("Var0"))
  let $GRAPH_22 := xqllib:optional($GRAPH_0,$GRAPH_21,("USRPB210_0"))
  return
    $GRAPH_22
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB210_0"))),("USRPB210_0"))
