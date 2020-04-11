import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
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
    for $node_USRPE313_0 in $node_Var0/RFDevice:hasCapability
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:resource)
    where fn:exists($value_USRPE313_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Voltage_0 in $doc_ObjectDescription
    let $value_Voltage_0 := fn:data($node_Voltage_0/@rdf:about)
    for $node_Var0 in $node_Voltage_0/RFDevice:hasMaxOutputPower
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Voltage_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Voltage_0">{$value_Voltage_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Voltage_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Voltage"]
    let $value_Voltage_0 := fn:data($node_Voltage_0/@rdf:about)
    where fn:exists($node_Voltage_0)
    return
      <xqllib:result>
        <xqllib:var name="Voltage_0">{$value_Voltage_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := ($GRAPH_3,$GRAPH_4)
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CrossPolarizationJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_Var0 in $node_Power_0/RFDevice:hasPulseRepetitionFrequency
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Power_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Power_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Power"]
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    where fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_Power_0 in $doc_ObjectDescription
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    for $node_Var1 in $node_Power_0/Nuvio:hasValue
    let $value_Var1 := fn:data($node_Var1/@rdf:resource)
    where fn:exists($node_Power_0) and fn:exists($value_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Var1 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IntValue"]
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Var1"))
  let $GRAPH_12 := xqllib:optional($GRAPH_8,$GRAPH_11,("Power_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_7,$GRAPH_12,("Power_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_6,$GRAPH_13,("Var0"))
  let $GRAPH_16 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_FrequencyScanRateUnit_0 in $doc_ObjectDescription
    let $value_FrequencyScanRateUnit_0 := fn:data($node_FrequencyScanRateUnit_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_FrequencyScanRateUnit_0) and fn:exists($node_Var0) and $node_FrequencyScanRateUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="FrequencyScanRateUnit_0">{$value_FrequencyScanRateUnit_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_FrequencyScanRateUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyScanRateUnit"]
    let $value_FrequencyScanRateUnit_0 := fn:data($node_FrequencyScanRateUnit_0/@rdf:about)
    where fn:exists($node_FrequencyScanRateUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="FrequencyScanRateUnit_0">{$value_FrequencyScanRateUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 := xqllib:and($GRAPH_17,$GRAPH_18,("FrequencyScanRateUnit_0"))
  let $GRAPH_20 :=  
    for $node_Distance_0 in $doc_ObjectDescription
    let $value_Distance_0 := fn:data($node_Distance_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Distance_0) and fn:exists($node_Var0) and $node_Distance_0/RFDevice:hasBeamwidth/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Distance_0">{$value_Distance_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 :=  
    for $node_Distance_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Distance"]
    let $value_Distance_0 := fn:data($node_Distance_0/@rdf:about)
    where fn:exists($node_Distance_0)
    return
      <xqllib:result>
        <xqllib:var name="Distance_0">{$value_Distance_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 :=  
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    for $node_Distance_0 in $node_Var2/Nuvio:hasValue
    let $value_Distance_0 := fn:data($node_Distance_0/@rdf:resource)
    where fn:exists($value_Distance_0) and fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Distance_0">{$value_Distance_0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 := xqllib:and($GRAPH_21,$GRAPH_22,("Distance_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_20,$GRAPH_23,("Distance_0"))
  let $GRAPH_25 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TimeInterval"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_26 :=  
    for $node_Var3 in $doc_ObjectDescription
    let $value_Var3 := fn:data($node_Var3/@rdf:about)
    for $node_Var0 in $node_Var3/Nuvio:hasValue
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var3)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_27 := xqllib:and($GRAPH_25,$GRAPH_26,("Var0"))
  let $GRAPH_28 := xqllib:and($GRAPH_24,$GRAPH_27,("Var0"))
  let $GRAPH_29 := xqllib:and($GRAPH_19,$GRAPH_28,("Var0"))
  let $GRAPH_30 := ($GRAPH_16,$GRAPH_29)
  let $GRAPH_31 := xqllib:and($GRAPH_14,$GRAPH_30,("Var0"))
  let $GRAPH_32 := xqllib:and($GRAPH_5,$GRAPH_31,("Var0"))
  let $GRAPH_33 := xqllib:and($GRAPH_1,$GRAPH_32,("Var0"))
  let $GRAPH_34 := xqllib:optional($GRAPH_0,$GRAPH_33,("USRPE313_0"))
  return
    $GRAPH_34
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE313_0"))),("USRPE313_0"))
