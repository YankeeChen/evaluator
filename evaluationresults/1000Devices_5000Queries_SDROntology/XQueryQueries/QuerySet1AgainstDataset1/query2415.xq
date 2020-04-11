import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SearchRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SearchRadar"]
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    where fn:exists($node_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Weight_0 in $doc_ObjectDescription
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:about)
    for $node_SearchRadar_0 in $node_Weight_0/RFDevice:hasChargingTime
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:resource)
    where fn:exists($value_SearchRadar_0) and fn:exists($node_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Weight_0 in $node_Var0/Nuvio:hasValue
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:resource)
    where fn:exists($node_Var0) and fn:exists($value_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_InformationRepresentation_0 in $doc_ObjectDescription
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    for $node_Var0 in $node_InformationRepresentation_0/Nuvio:isExpressedBy
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_InformationRepresentation_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
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
  let $GRAPH_6 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_DataValue0 in $node_Var1/RFDevice:hasDecimalValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := $GRAPH_6[(data(xqllib:var[@name="DataValue0"]) > xs:decimal("0"))]
  let $GRAPH_8 := xqllib:and($GRAPH_5,$GRAPH_7,("Var1"))
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_AngleUnit_0 in $node_Var0/Nuvio:hasUnitOfMeasure
    let $value_AngleUnit_0 := fn:data($node_AngleUnit_0/@rdf:resource)
    where fn:exists($value_AngleUnit_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="AngleUnit_0">{$value_AngleUnit_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue1 in $node_Var0/Nuvio:hasPrecision
    let $value_DataValue1 := fn:data($node_DataValue1)
    where fn:exists($value_DataValue1) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue1">{$value_DataValue1}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := $GRAPH_11[(data(xqllib:var[@name="DataValue1"]) <= 1769751563)]
  let $GRAPH_13 :=  
    for $node_AngleUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#AngleUnit"]
    let $value_AngleUnit_0 := fn:data($node_AngleUnit_0/@rdf:about)
    where fn:exists($node_AngleUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="AngleUnit_0">{$value_AngleUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := ($GRAPH_12,$GRAPH_13)
  let $GRAPH_15 := xqllib:and($GRAPH_9,$GRAPH_14,("AngleUnit_0","Var0"))
  let $GRAPH_16 := xqllib:optional($GRAPH_8,$GRAPH_15,("Var0"))
  let $GRAPH_17 := ($GRAPH_4,$GRAPH_16)
  let $GRAPH_19 :=  
    for $node_InformationContent_0 in $doc_ObjectDescription
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:about)
    for $node_InformationRepresentation_0 in $node_InformationContent_0/Nuvio:representedBy
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:resource)
    where fn:exists($node_InformationContent_0) and fn:exists($value_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_InformationContent_0 in $node_Entity_0/Nuvio:represents
    let $value_InformationContent_0 := fn:data($node_InformationContent_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_InformationContent_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="InformationContent_0">{$value_InformationContent_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 := ($GRAPH_19,$GRAPH_20)
  let $GRAPH_22 := xqllib:optional($GRAPH_17,$GRAPH_21,("InformationRepresentation_0"))
  let $GRAPH_23 := xqllib:and($GRAPH_2,$GRAPH_22,("Var0"))
  let $GRAPH_24 := xqllib:and($GRAPH_1,$GRAPH_23,("Weight_0"))
  let $GRAPH_25 := xqllib:and($GRAPH_0,$GRAPH_24,("SearchRadar_0"))
  return
    $GRAPH_25
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SearchRadar_0"))),("SearchRadar_0"))
