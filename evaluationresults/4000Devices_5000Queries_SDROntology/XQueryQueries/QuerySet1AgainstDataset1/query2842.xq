import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RadarWarningReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarWarningReceiver"]
    let $value_RadarWarningReceiver_0 := fn:data($node_RadarWarningReceiver_0/@rdf:about)
    where fn:exists($node_RadarWarningReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarWarningReceiver_0">{$value_RadarWarningReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadarWarningReceiver_0 in $doc_ObjectDescription
    let $value_RadarWarningReceiver_0 := fn:data($node_RadarWarningReceiver_0/@rdf:about)
    for $node_Weight_0 in $node_RadarWarningReceiver_0/RFDevice:hasWidth
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:resource)
    where fn:exists($node_RadarWarningReceiver_0) and fn:exists($value_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarWarningReceiver_0">{$value_RadarWarningReceiver_0}</xqllib:var>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Weight_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Weight"]
    let $value_Weight_0 := fn:data($node_Weight_0/@rdf:about)
    where fn:exists($node_Weight_0)
    return
      <xqllib:result>
        <xqllib:var name="Weight_0">{$value_Weight_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
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
  let $GRAPH_5 :=  
    for $node_InformationRepresentation_0 in $doc_ObjectDescription
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    for $node_Var0 in $node_InformationRepresentation_0/Nuvio:expresses
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_InformationRepresentation_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#GainRange"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/RFDevice:hasMin
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:optional($GRAPH_6,$GRAPH_7,("Var0"))
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PositiveFloatValue"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Width_0 in $doc_ObjectDescription
    let $value_Width_0 := fn:data($node_Width_0/@rdf:about)
    where fn:exists($node_Var0) and fn:exists($node_Width_0) and $node_Width_0/Nuvio:hasProcessQuantity/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Width_0">{$value_Width_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:optional($GRAPH_8,$GRAPH_11,("Var0"))
  let $GRAPH_13 := ($GRAPH_5,$GRAPH_12)
  let $GRAPH_14 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue0 in $node_Var0/Nuvio:hasDataValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := $GRAPH_14[not((data(xqllib:var[@name="DataValue0"]) > xs:double("0.0")))]
  let $GRAPH_16 := xqllib:and($GRAPH_13,$GRAPH_15,("Var0"))
  let $GRAPH_17 := xqllib:and($GRAPH_3,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_2,$GRAPH_17,("Weight_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_1,$GRAPH_18,("Weight_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_0,$GRAPH_19,("RadarWarningReceiver_0"))
  return
    $GRAPH_20
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarWarningReceiver_0"))),("RadarWarningReceiver_0"))
