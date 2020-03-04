import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
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
    for $node_USRPB200mini_0 in $doc_ObjectDescription
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:about)
    for $node_Var0 in $node_USRPB200mini_0/RFDevice:supportsSpectrumSensing
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_USRPB200mini_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
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
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    for $node_Var1 in $node_Var2/Nuvio:hasValue
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($value_Var1) and fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var2 in $node_Entity_0/Nuvio:hasUnitOfMeasure
    let $value_Var2 := fn:data($node_Var2/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SpatialUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Length"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_AntennaPolarization_0 in $node_Entity_0/Nuvio:hasProcessQuality
    let $value_AntennaPolarization_0 := fn:data($node_AntennaPolarization_0/@rdf:resource)
    where fn:exists($value_AntennaPolarization_0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="AntennaPolarization_0">{$value_AntennaPolarization_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_AntennaPolarization_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AntennaPolarization"]
    let $value_AntennaPolarization_0 := fn:data($node_AntennaPolarization_0/@rdf:about)
    where fn:exists($node_AntennaPolarization_0)
    return
      <xqllib:result>
        <xqllib:var name="AntennaPolarization_0">{$value_AntennaPolarization_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("AntennaPolarization_0"))
  let $GRAPH_11 := xqllib:optional($GRAPH_7,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := ($GRAPH_6,$GRAPH_11)
  let $GRAPH_13 := xqllib:and($GRAPH_4,$GRAPH_12,("Entity_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_3,$GRAPH_13,("Var2"))
  let $GRAPH_15 :=  
    for $node_Var3 in $doc_ObjectDescription
    let $value_Var3 := fn:data($node_Var3/@rdf:about)
    for $node_Var1 in $node_Var3/Nuvio:hasValue
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($value_Var1) and fn:exists($node_Var3)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Var3 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DecimalValue"]
    let $value_Var3 := fn:data($node_Var3/@rdf:about)
    where fn:exists($node_Var3)
    return
      <xqllib:result>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_Var3 in $doc_ObjectDescription
    let $value_Var3 := fn:data($node_Var3/@rdf:about)
    for $node_DataValue0 in $node_Var3/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var3)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := $GRAPH_17[(data(xqllib:var[@name="DataValue0"]) < 1457961772)]
  let $GRAPH_19 := xqllib:and($GRAPH_16,$GRAPH_18,("Var3"))
  let $GRAPH_20 :=  
    for $node_Var4 in $doc_ObjectDescription
    let $value_Var4 := fn:data($node_Var4/@rdf:about)
    for $node_Var3 in $node_Var4/Nuvio:hasUnitOfMeasure
    let $value_Var3 := fn:data($node_Var3/@rdf:resource)
    where fn:exists($value_Var3) and fn:exists($node_Var4)
    return
      <xqllib:result>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
        <xqllib:var name="Var4">{$value_Var4}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 :=  
    for $node_Var3 in $doc_ObjectDescription
    let $value_Var3 := fn:data($node_Var3/@rdf:about)
    for $node_DataValue1 in $node_Var3/RFDevice:hasDoubleValue
    let $value_DataValue1 := fn:data($node_DataValue1)
    where fn:exists($value_DataValue1) and fn:exists($node_Var3)
    return
      <xqllib:result>
        <xqllib:var name="DataValue1">{$value_DataValue1}</xqllib:var>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 := $GRAPH_21[(data(xqllib:var[@name="DataValue1"]) > xs:decimal("10"))]
  let $GRAPH_23 := xqllib:and($GRAPH_20,$GRAPH_22,("Var3"))
  let $GRAPH_24 := xqllib:and($GRAPH_19,$GRAPH_23,("Var3"))
  let $GRAPH_25 := xqllib:and($GRAPH_15,$GRAPH_24,("Var3"))
  let $GRAPH_26 := xqllib:and($GRAPH_14,$GRAPH_25,("Var1"))
  let $GRAPH_27 := xqllib:and($GRAPH_2,$GRAPH_26,("Var1"))
  let $GRAPH_28 := xqllib:and($GRAPH_1,$GRAPH_27,("Var0"))
  let $GRAPH_29 := xqllib:and($GRAPH_0,$GRAPH_28,("USRPB200mini_0"))
  return
    $GRAPH_29
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200mini_0"))),("USRPB200mini_0"))
