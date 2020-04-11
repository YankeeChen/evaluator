import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB2xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB2xx"]
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:about)
    where fn:exists($node_USRPB2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPB2xx_0 in $node_Entity_0/RFDevice:hasProducer
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPB2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_DataSize_0 in $doc_ObjectDescription
    let $value_DataSize_0 := fn:data($node_DataSize_0/@rdf:about)
    for $node_Entity_0 in $node_DataSize_0/RFDevice:hasMaxSensedPower
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_DataSize_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DataSize_0">{$value_DataSize_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_DataSize_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DataSize"]
    let $value_DataSize_0 := fn:data($node_DataSize_0/@rdf:about)
    where fn:exists($node_DataSize_0)
    return
      <xqllib:result>
        <xqllib:var name="DataSize_0">{$value_DataSize_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataSize_0 in $node_Var0/Nuvio:hasValue
    let $value_DataSize_0 := fn:data($node_DataSize_0/@rdf:resource)
    where fn:exists($value_DataSize_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataSize_0">{$value_DataSize_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#IntegerValue"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue0 in $node_Var0/RFDevice:hasPositiveIntegerValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := $GRAPH_7[(data(xqllib:var[@name="DataValue0"]) = -1990138343)]
  let $GRAPH_9 := xqllib:and($GRAPH_6,$GRAPH_8,("Var0"))
  let $GRAPH_10 :=  
    for $node_InformationUnit_0 in $doc_ObjectDescription
    let $value_InformationUnit_0 := fn:data($node_InformationUnit_0/@rdf:about)
    for $node_Var0 in $node_InformationUnit_0/Nuvio:hasUnitOfMeasure
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_InformationUnit_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InformationUnit_0">{$value_InformationUnit_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_InformationUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InformationUnit"]
    let $value_InformationUnit_0 := fn:data($node_InformationUnit_0/@rdf:about)
    where fn:exists($node_InformationUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="InformationUnit_0">{$value_InformationUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("InformationUnit_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_9,$GRAPH_12,("Var0"))
  let $GRAPH_14 := xqllib:and($GRAPH_5,$GRAPH_13,("Var0"))
  let $GRAPH_15 := xqllib:optional($GRAPH_4,$GRAPH_14,("DataSize_0"))
  let $GRAPH_16 := xqllib:and($GRAPH_3,$GRAPH_15,("DataSize_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_2,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_1,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := xqllib:and($GRAPH_0,$GRAPH_18,("USRPB2xx_0"))
  return
    $GRAPH_19
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xx_0"))),("USRPB2xx_0"))
