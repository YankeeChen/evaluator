import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ElectronicSupportSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicSupportSystem"]
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:about)
    where fn:exists($node_ElectronicSupportSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_ElectronicSupportSystem_0 in $node_Var0/RFDevice:hasCapability
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicSupportSystem_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
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
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/RFDevice:hasBandwidth
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_1 in $doc_ObjectDescription
    let $value_Entity_1 := fn:data($node_Entity_1/@rdf:about)
    for $node_Entity_0 in $node_Entity_1/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Entity_1)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Entity_1">{$value_Entity_1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InboundRangeGatePullOffJamming"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Power_0 in $node_Entity_0/RFDevice:hasMaxOutputPower
    let $value_Power_0 := fn:data($node_Power_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Power_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Power"]
    let $value_Power_0 := fn:data($node_Power_0/@rdf:about)
    where fn:exists($node_Power_0)
    return
      <xqllib:result>
        <xqllib:var name="Power_0">{$value_Power_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Power_0"))
  let $GRAPH_9 := xqllib:optional($GRAPH_5,$GRAPH_8,("Entity_0"))
  let $GRAPH_11 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TimeInstant"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
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
  let $GRAPH_14 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_DataValue0 in $node_Var1/Nuvio:hasDataValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("Var1"))
  let $GRAPH_16 := xqllib:optional($GRAPH_12,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := ($GRAPH_11,$GRAPH_16)
  let $GRAPH_18 := xqllib:and($GRAPH_9,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_4,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_3,$GRAPH_19,("Entity_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_2,$GRAPH_20,("Var0"))
  let $GRAPH_22 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FormationJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 :=  
    for $node_Var0 in $doc_ObjectDescription[RFDevice:hasPulseWidth/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#Instance5388"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 := xqllib:and($GRAPH_22,$GRAPH_23,("Var0"))
  let $GRAPH_25 := xqllib:and($GRAPH_21,$GRAPH_24,("Var0"))
  let $GRAPH_26 := xqllib:and($GRAPH_1,$GRAPH_25,("Var0"))
  let $GRAPH_27 := xqllib:and($GRAPH_0,$GRAPH_26,("ElectronicSupportSystem_0"))
  return
    $GRAPH_27
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicSupportSystem_0"))),("ElectronicSupportSystem_0"))
