import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace geosparql = "http://www.opengis.net/ont/geosparql#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_Full_DuplexCommunicationsSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Full-DuplexCommunicationsSystem"]
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:about)
    where fn:exists($node_Full_DuplexCommunicationsSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Receiving_0 in $doc_ObjectDescription
    let $value_Receiving_0 := fn:data($node_Receiving_0/@rdf:about)
    for $node_Full_DuplexCommunicationsSystem_0 in $node_Receiving_0/RFDevice:supportsTuning
    let $value_Full_DuplexCommunicationsSystem_0 := fn:data($node_Full_DuplexCommunicationsSystem_0/@rdf:resource)
    where fn:exists($value_Full_DuplexCommunicationsSystem_0) and fn:exists($node_Receiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Full_DuplexCommunicationsSystem_0">{$value_Full_DuplexCommunicationsSystem_0}</xqllib:var>
        <xqllib:var name="Receiving_0">{$value_Receiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Receiving_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Receiving"]
    let $value_Receiving_0 := fn:data($node_Receiving_0/@rdf:about)
    where fn:exists($node_Receiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Receiving_0">{$value_Receiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Receiving_0 in $node_Entity_0/RFDevice:hasFrequencyAccuracy
    let $value_Receiving_0 := fn:data($node_Receiving_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Receiving_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Receiving_0">{$value_Receiving_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Entity_0 in $node_InformationEntity_0/Nuvio:expresses
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Artix7FPGA_0 in $doc_ObjectDescription
    let $value_Artix7FPGA_0 := fn:data($node_Artix7FPGA_0/@rdf:about)
    for $node_Entity_0 in $node_Artix7FPGA_0/Nuvio:aggregateOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_Artix7FPGA_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Artix7FPGA_0">{$value_Artix7FPGA_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Artix7FPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Artix7FPGA"]
    let $value_Artix7FPGA_0 := fn:data($node_Artix7FPGA_0/@rdf:about)
    where fn:exists($node_Artix7FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Artix7FPGA_0">{$value_Artix7FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_XilinxZynq7020SoC_0 in $doc_ObjectDescription
    let $value_XilinxZynq7020SoC_0 := fn:data($node_XilinxZynq7020SoC_0/@rdf:about)
    for $node_Artix7FPGA_0 in $node_XilinxZynq7020SoC_0/Nuvio:compositeOf
    let $value_Artix7FPGA_0 := fn:data($node_Artix7FPGA_0/@rdf:resource)
    where fn:exists($value_Artix7FPGA_0) and fn:exists($node_XilinxZynq7020SoC_0)
    return
      <xqllib:result>
        <xqllib:var name="Artix7FPGA_0">{$value_Artix7FPGA_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7020SoC_0">{$value_XilinxZynq7020SoC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Artix7FPGA_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("Artix7FPGA_0"))
  let $GRAPH_10 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Width"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
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
  let $GRAPH_12 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue0 in $node_Var0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := $GRAPH_12[(data(xqllib:var[@name="DataValue0"]) != 1641020867)]
  let $GRAPH_14 := xqllib:and($GRAPH_11,$GRAPH_13,("Var0"))
  let $GRAPH_15 := xqllib:optional($GRAPH_10,$GRAPH_14,("Entity_0"))
  let $GRAPH_16 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 := xqllib:optional($GRAPH_15,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_9,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:optional($GRAPH_4,$GRAPH_18,("Entity_0"))
  let $GRAPH_20 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_Geometry_0 in $node_InformationEntity_0/Nuvio:isExpressedBy
    let $value_Geometry_0 := fn:data($node_Geometry_0/@rdf:resource)
    where fn:exists($value_Geometry_0) and fn:exists($node_InformationEntity_0)
    return
      <xqllib:result>
        <xqllib:var name="Geometry_0">{$value_Geometry_0}</xqllib:var>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 :=  
    for $node_Geometry_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/geosparql#Geometry"]
    let $value_Geometry_0 := fn:data($node_Geometry_0/@rdf:about)
    for $node_DataValue1 in $node_Geometry_0/geosparql:isEmpty
    let $value_DataValue1 := fn:data($node_DataValue1)
    where fn:exists($value_DataValue1) and fn:exists($node_Geometry_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue1">{$value_DataValue1}</xqllib:var>
        <xqllib:var name="Geometry_0">{$value_Geometry_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 := $GRAPH_21[(data(xqllib:var[@name="DataValue1"]) < fn:true())]
  let $GRAPH_23 := xqllib:and($GRAPH_20,$GRAPH_22,("Geometry_0"))
  let $GRAPH_24 := xqllib:and($GRAPH_19,$GRAPH_23,("InformationEntity_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_3,$GRAPH_24,("Entity_0"))
  let $GRAPH_26 := xqllib:optional($GRAPH_2,$GRAPH_25,("Receiving_0"))
  let $GRAPH_27 := xqllib:and($GRAPH_1,$GRAPH_26,("Receiving_0"))
  let $GRAPH_28 := xqllib:optional($GRAPH_0,$GRAPH_27,("Full_DuplexCommunicationsSystem_0"))
  return
    $GRAPH_28
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("Full_DuplexCommunicationsSystem_0"))),("Full_DuplexCommunicationsSystem_0"))
