import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200mini_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200mini"]
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:about)
    where fn:exists($node_USRPB200mini_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_USRPB200mini_0 in $node_Object_0/RFDevice:isDeployedOn
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_USRPB200mini_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Height_0 in $doc_ObjectDescription
    let $value_Height_0 := fn:data($node_Height_0/@rdf:about)
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_Height_0) and fn:exists($node_Object_0) and $node_Height_0/RFDevice:hasWeight/@rdf:resource = $value_Object_0
    return
      <xqllib:result>
        <xqllib:var name="Height_0">{$value_Height_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Height_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Height"]
    let $value_Height_0 := fn:data($node_Height_0/@rdf:about)
    where fn:exists($node_Height_0)
    return
      <xqllib:result>
        <xqllib:var name="Height_0">{$value_Height_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Height_0 in $node_Var0/Nuvio:hasValue
    let $value_Height_0 := fn:data($node_Height_0/@rdf:resource)
    where fn:exists($value_Height_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Height_0">{$value_Height_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_SpatialLinearUnit_0 in $doc_ObjectDescription
    let $value_SpatialLinearUnit_0 := fn:data($node_SpatialLinearUnit_0/@rdf:about)
    for $node_Var0 in $node_SpatialLinearUnit_0/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_SpatialLinearUnit_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="SpatialLinearUnit_0">{$value_SpatialLinearUnit_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PhaseShiftKeyingModulation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PowerUnit"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Var0"))
  let $GRAPH_13 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var0) and fn:exists($node_Var1) and $node_Var1/Nuvio:informationSource/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#WhipAntenna"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Var1 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription2000.owl#Gain_instance15"]/RFDevice:hasCapacity
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := ($GRAPH_15,$GRAPH_16)
  let $GRAPH_18 := ($GRAPH_13,$GRAPH_17)
  let $GRAPH_19 := xqllib:and($GRAPH_11,$GRAPH_18,("Var0"))
  let $GRAPH_20 := ($GRAPH_8,$GRAPH_19)
  let $GRAPH_21 := ($GRAPH_6,$GRAPH_20)
  let $GRAPH_22 := xqllib:and($GRAPH_4,$GRAPH_21,("Var0"))
  let $GRAPH_23 := xqllib:and($GRAPH_3,$GRAPH_22,("Height_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_2,$GRAPH_23,("Height_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_1,$GRAPH_24,("Object_0"))
  let $GRAPH_26 := xqllib:and($GRAPH_0,$GRAPH_25,("USRPB200mini_0"))
  return
    $GRAPH_26
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200mini_0"))),("USRPB200mini_0"))
