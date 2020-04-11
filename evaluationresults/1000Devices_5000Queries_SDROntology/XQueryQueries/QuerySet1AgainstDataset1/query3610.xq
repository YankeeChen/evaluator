import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
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
    for $node_USRPE313_0 in $doc_ObjectDescription
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:about)
    for $node_Var0 in $node_USRPE313_0/RFDevice:hasNoiseFigure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_USRPE313_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/Nuvio:hasValue
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
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
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FreqencyRange"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TimeUnit"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:optional($GRAPH_4,$GRAPH_5,("Var1"))
  let $GRAPH_8 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectricCharge"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
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
  let $GRAPH_10 :=  
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    for $node_DataValue0 in $node_Var2/RFDevice:hasNonNegativeIntegerValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := $GRAPH_10[(data(xqllib:var[@name="DataValue0"]) <= -12.79)]
  let $GRAPH_12 :=  
    for $node_ElectricChargeUnit_0 in $doc_ObjectDescription
    let $value_ElectricChargeUnit_0 := fn:data($node_ElectricChargeUnit_0/@rdf:about)
    for $node_Var2 in $node_ElectricChargeUnit_0/Nuvio:hasUnitOfMeasure
    let $value_Var2 := fn:data($node_Var2/@rdf:resource)
    where fn:exists($node_ElectricChargeUnit_0) and fn:exists($value_Var2)
    return
      <xqllib:result>
        <xqllib:var name="ElectricChargeUnit_0">{$value_ElectricChargeUnit_0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_ElectricChargeUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectricChargeUnit"]
    let $value_ElectricChargeUnit_0 := fn:data($node_ElectricChargeUnit_0/@rdf:about)
    where fn:exists($node_ElectricChargeUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectricChargeUnit_0">{$value_ElectricChargeUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("ElectricChargeUnit_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_11,$GRAPH_14,("Var2"))
  let $GRAPH_16 := xqllib:and($GRAPH_9,$GRAPH_15,("Var2"))
  let $GRAPH_17 := ($GRAPH_8,$GRAPH_16)
  let $GRAPH_18 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:and($GRAPH_17,$GRAPH_18,("Var1"))
  let $GRAPH_20 := xqllib:optional($GRAPH_6,$GRAPH_19,("Var1"))
  let $GRAPH_21 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var1 in $node_Entity_0/Nuvio:represents
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 := xqllib:and($GRAPH_20,$GRAPH_21,("Var1"))
  let $GRAPH_23 := xqllib:and($GRAPH_3,$GRAPH_22,("Var1"))
  let $GRAPH_24 := xqllib:and($GRAPH_2,$GRAPH_23,("Var1"))
  let $GRAPH_25 := xqllib:and($GRAPH_1,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_0,$GRAPH_25,("USRPE313_0"))
  return
    $GRAPH_26
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE313_0"))),("USRPE313_0"))
