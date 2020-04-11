import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
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
    for $node_RadarJammer_0 in $doc_ObjectDescription
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    for $node_ElectronicSupportSystem_0 in $node_RadarJammer_0/Nuvio:aggregateOf
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicSupportSystem_0) and fn:exists($node_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarJammer"]
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    where fn:exists($node_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_RadarJammer_0 in $node_Entity_0/RFDevice:isProducerOf
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_XilinxZynq7000Family_0 in $doc_ObjectDescription
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_XilinxZynq7000Family_0) and $node_XilinxZynq7000Family_0/Nuvio:relevantIndividual/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_DAC_0 in $doc_ObjectDescription
    let $value_DAC_0 := fn:data($node_DAC_0/@rdf:about)
    for $node_XilinxZynq7000Family_0 in $node_DAC_0/Nuvio:compositeOf
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:resource)
    where fn:exists($node_DAC_0) and fn:exists($value_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="DAC_0">{$value_DAC_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_DAC_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DAC"]
    let $value_DAC_0 := fn:data($node_DAC_0/@rdf:about)
    where fn:exists($node_DAC_0)
    return
      <xqllib:result>
        <xqllib:var name="DAC_0">{$value_DAC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_DAC_0 in $node_Object_0/RFDevice:hasProducer
    let $value_DAC_0 := fn:data($node_DAC_0/@rdf:resource)
    where fn:exists($value_DAC_0) and fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="DAC_0">{$value_DAC_0}</xqllib:var>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := ($GRAPH_9,$GRAPH_10)
  let $GRAPH_12 := xqllib:and($GRAPH_7,$GRAPH_11,("DAC_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_6,$GRAPH_12,("XilinxZynq7000Family_0"))
  let $GRAPH_14 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/Nuvio:hasValue
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := ($GRAPH_13,$GRAPH_14)
  let $GRAPH_16 := xqllib:and($GRAPH_4,$GRAPH_15,("Entity_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_3,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_2,$GRAPH_17,("RadarJammer_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_1,$GRAPH_18,("RadarJammer_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_0,$GRAPH_19,("ElectronicSupportSystem_0"))
  return
    $GRAPH_20
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicSupportSystem_0"))),("ElectronicSupportSystem_0"))
