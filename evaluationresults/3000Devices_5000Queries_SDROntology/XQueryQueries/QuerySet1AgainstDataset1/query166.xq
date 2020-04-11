import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ModelX_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ModelX"]
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:about)
    where fn:exists($node_ModelX_0)
    return
      <xqllib:result>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_ModelX_0 in $node_Entity_0/RFDevice:isDeployedOn
    let $value_ModelX_0 := fn:data($node_ModelX_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_ModelX_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="ModelX_0">{$value_ModelX_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioComponent"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_ChokeRingAntenna_0 in $doc_ObjectDescription
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:about)
    for $node_Entity_0 in $node_ChokeRingAntenna_0/Nuvio:aggregateOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_ChokeRingAntenna_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_ChokeRingAntenna_0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription3000.owl#Angle_instance30"]/RFDevice:hasBeamwidth
    let $value_ChokeRingAntenna_0 := fn:data($node_ChokeRingAntenna_0/@rdf:resource)
    where fn:exists($value_ChokeRingAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="ChokeRingAntenna_0">{$value_ChokeRingAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("ChokeRingAntenna_0"))
  let $GRAPH_8 := ($GRAPH_4,$GRAPH_7)
  let $GRAPH_11 :=  
    for $node_DimensionlessUnit_0 in $doc_ObjectDescription
    let $value_DimensionlessUnit_0 := fn:data($node_DimensionlessUnit_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_DimensionlessUnit_0) and fn:exists($node_Entity_0) and $node_DimensionlessUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="DimensionlessUnit_0">{$value_DimensionlessUnit_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DataValue0 in $node_Entity_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := $GRAPH_12[(data(xqllib:var[@name="DataValue0"]) > -133366672)]
  let $GRAPH_14 := ($GRAPH_11,$GRAPH_13)
  let $GRAPH_15 :=  
    for $node_DimensionlessUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#DimensionlessUnit"]
    let $value_DimensionlessUnit_0 := fn:data($node_DimensionlessUnit_0/@rdf:about)
    where fn:exists($node_DimensionlessUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="DimensionlessUnit_0">{$value_DimensionlessUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := xqllib:optional($GRAPH_14,$GRAPH_15,("DimensionlessUnit_0"))
  let $GRAPH_17 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Kintex7FPGA_0 in $node_Entity_0/Nuvio:relevantIndividual
    let $value_Kintex7FPGA_0 := fn:data($node_Kintex7FPGA_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Kintex7FPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Kintex7FPGA_0">{$value_Kintex7FPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 :=  
    for $node_CyclostationaryDetection_0 in $doc_ObjectDescription
    let $value_CyclostationaryDetection_0 := fn:data($node_CyclostationaryDetection_0/@rdf:about)
    for $node_Entity_0 in $node_CyclostationaryDetection_0/Nuvio:relevantIndividual
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_CyclostationaryDetection_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="CyclostationaryDetection_0">{$value_CyclostationaryDetection_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 :=  
    for $node_CyclostationaryDetection_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CyclostationaryDetection"]
    let $value_CyclostationaryDetection_0 := fn:data($node_CyclostationaryDetection_0/@rdf:about)
    where fn:exists($node_CyclostationaryDetection_0)
    return
      <xqllib:result>
        <xqllib:var name="CyclostationaryDetection_0">{$value_CyclostationaryDetection_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := xqllib:and($GRAPH_18,$GRAPH_19,("CyclostationaryDetection_0"))
  let $GRAPH_21 := xqllib:and($GRAPH_17,$GRAPH_20,("Entity_0"))
  let $GRAPH_22 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IntValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_23 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DataValue1 in $node_Entity_0/Nuvio:hasPrecision
    let $value_DataValue1 := fn:data($node_DataValue1)
    where fn:exists($value_DataValue1) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue1">{$value_DataValue1}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 := $GRAPH_23[(data(xqllib:var[@name="DataValue1"]) > -554425490)]
  let $GRAPH_25 := xqllib:and($GRAPH_22,$GRAPH_24,("Entity_0"))
  let $GRAPH_26 := xqllib:and($GRAPH_21,$GRAPH_25,("Entity_0"))
  let $GRAPH_27 := ($GRAPH_16,$GRAPH_26)
  let $GRAPH_28 := xqllib:and($GRAPH_8,$GRAPH_27,("Entity_0"))
  let $GRAPH_29 := xqllib:and($GRAPH_2,$GRAPH_28,("Entity_0"))
  let $GRAPH_30 := xqllib:and($GRAPH_1,$GRAPH_29,("Entity_0"))
  let $GRAPH_31 := xqllib:and($GRAPH_0,$GRAPH_30,("ModelX_0"))
  return
    $GRAPH_31
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ModelX_0"))),("ModelX_0"))
