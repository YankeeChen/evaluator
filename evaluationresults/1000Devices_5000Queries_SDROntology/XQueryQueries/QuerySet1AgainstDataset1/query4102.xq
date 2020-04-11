import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE3xx"]
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:about)
    where fn:exists($node_USRPE3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPE3xx_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_USRPE3xx_0 := fn:data($node_USRPE3xx_0/@rdf:resource)
    where fn:exists($value_USRPE3xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE3xx_0">{$value_USRPE3xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FixedBandwidthSensing"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Var0 in $node_Object_0/RFDevice:hasBandwidthRange
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("Var0"))
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Jamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/RFDevice:hasPulseRepetitionInterval
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription1000.owl#ElectronicSupport_instance5"]/Nuvio:subprocessOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var1 in $node_Entity_0/Nuvio:hasValue
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_Value_0 in $doc_ObjectDescription
    let $value_Value_0 := fn:data($node_Value_0/@rdf:about)
    for $node_Var1 in $node_Value_0/Nuvio:hasUnitOfMeasure
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Value_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Value_0">{$value_Value_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,("Var1"))
  let $GRAPH_15 := xqllib:and($GRAPH_11,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_10,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Var2) and $node_Var2/Nuvio:informationSource/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := ($GRAPH_16,$GRAPH_17)
  let $GRAPH_19 := ($GRAPH_8,$GRAPH_18)
  let $GRAPH_20 := xqllib:and($GRAPH_6,$GRAPH_19,("Entity_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_5,$GRAPH_20,("Var0"))
  let $GRAPH_22 := xqllib:and($GRAPH_4,$GRAPH_21,("Var0"))
  let $GRAPH_23 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 := xqllib:and($GRAPH_22,$GRAPH_23,("Var0"))
  let $GRAPH_25 := xqllib:and($GRAPH_1,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_0,$GRAPH_25,("USRPE3xx_0"))
  return
    $GRAPH_26
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE3xx_0"))),("USRPE3xx_0"))
