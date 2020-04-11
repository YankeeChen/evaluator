import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace gml = "http://www.opengis.net/ont/gml#";
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
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPE313_0 in $node_Var0/RFDevice:supportsTuning
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:resource)
    where fn:exists($value_USRPE313_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_InformationRepresentation_0 in $node_Var0/Nuvio:expresses
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:resource)
    where fn:exists($value_InformationRepresentation_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#Sphere"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/ObjectDescription2000.owl#Frequency_instance201"]/Nuvio:hasProcessQuantity
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:optional($GRAPH_4,$GRAPH_5,("Var0"))
  let $GRAPH_8 :=  
    for $node_TimeUnit_0 in $doc_ObjectDescription
    let $value_TimeUnit_0 := fn:data($node_TimeUnit_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_TimeUnit_0) and fn:exists($node_Var0) and $node_TimeUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="TimeUnit_0">{$value_TimeUnit_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
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
  let $GRAPH_10 := $GRAPH_9[(data(xqllib:var[@name="DataValue0"]) = 233321506)]
  let $GRAPH_11 := ($GRAPH_8,$GRAPH_10)
  let $GRAPH_12 :=  
    for $node_TimeUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TimeUnit"]
    let $value_TimeUnit_0 := fn:data($node_TimeUnit_0/@rdf:about)
    where fn:exists($node_TimeUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="TimeUnit_0">{$value_TimeUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 := xqllib:optional($GRAPH_11,$GRAPH_12,("TimeUnit_0"))
  let $GRAPH_14 := xqllib:and($GRAPH_6,$GRAPH_13,("Var0"))
  let $GRAPH_16 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyAccuracy"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_19 :=  
    for $node_Tin_0 in $doc_ObjectDescription
    let $value_Tin_0 := fn:data($node_Tin_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Tin_0) and fn:exists($node_Var0) and $node_Tin_0/Nuvio:relevantIndividual/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Tin_0">{$value_Tin_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 :=  
    for $node_CompositeSolid_0 in $doc_ObjectDescription
    let $value_CompositeSolid_0 := fn:data($node_CompositeSolid_0/@rdf:about)
    for $node_Var0 in $node_CompositeSolid_0/Nuvio:relevantIndividual
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_CompositeSolid_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeSolid_0">{$value_CompositeSolid_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_21 :=  
    for $node_CompositeSolid_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#CompositeSolid"]
    let $value_CompositeSolid_0 := fn:data($node_CompositeSolid_0/@rdf:about)
    where fn:exists($node_CompositeSolid_0)
    return
      <xqllib:result>
        <xqllib:var name="CompositeSolid_0">{$value_CompositeSolid_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 := xqllib:and($GRAPH_20,$GRAPH_21,("CompositeSolid_0"))
  let $GRAPH_23 :=  
    for $node_Tin_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/gml#Tin"]
    let $value_Tin_0 := fn:data($node_Tin_0/@rdf:about)
    where fn:exists($node_Tin_0)
    return
      <xqllib:result>
        <xqllib:var name="Tin_0">{$value_Tin_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_24 := xqllib:optional($GRAPH_22,$GRAPH_23,())
  let $GRAPH_25 := ($GRAPH_19,$GRAPH_24)
  let $GRAPH_26 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#UnitOfMeasure"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_27 := ($GRAPH_25,$GRAPH_26)
  let $GRAPH_28 := ($GRAPH_16,$GRAPH_27)
  let $GRAPH_29 := xqllib:and($GRAPH_14,$GRAPH_28,("Var0"))
  let $GRAPH_30 := xqllib:and($GRAPH_3,$GRAPH_29,("Var0"))
  let $GRAPH_31 :=  
    for $node_InformationRepresentation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationRepresentation"]
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    where fn:exists($node_InformationRepresentation_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_32 := ($GRAPH_30,$GRAPH_31)
  let $GRAPH_33 := xqllib:and($GRAPH_1,$GRAPH_32,("Var0"))
  let $GRAPH_34 := xqllib:and($GRAPH_0,$GRAPH_33,("USRPE313_0"))
  return
    $GRAPH_34
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE313_0"))),("USRPE313_0"))
