import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200mini_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200mini"]
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:about)
    where fn:exists($node_USRPB200mini_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_USRPB200mini_0 in $node_Entity_0/RFDevice:isProducerOf
    let $value_USRPB200mini_0 := fn:data($node_USRPB200mini_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_USRPB200mini_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="USRPB200mini_0">{$value_USRPB200mini_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Process_0) and $node_Process_0/Nuvio:isExpressedBy/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_DimensionlessUnit_0 in $doc_ObjectDescription
    let $value_DimensionlessUnit_0 := fn:data($node_DimensionlessUnit_0/@rdf:about)
    for $node_Entity_0 in $node_DimensionlessUnit_0/Nuvio:hasUnitOfMeasure
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($node_DimensionlessUnit_0) and fn:exists($value_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DimensionlessUnit_0">{$value_DimensionlessUnit_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
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
  let $GRAPH_5 := $GRAPH_4[(data(xqllib:var[@name="DataValue0"]) = 1638141342)]
  let $GRAPH_6 := xqllib:and($GRAPH_3,$GRAPH_5,("Entity_0"))
  let $GRAPH_7 :=  
    for $node_DimensionlessUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#DimensionlessUnit"]
    let $value_DimensionlessUnit_0 := fn:data($node_DimensionlessUnit_0/@rdf:about)
    where fn:exists($node_DimensionlessUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="DimensionlessUnit_0">{$value_DimensionlessUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("DimensionlessUnit_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_2,$GRAPH_8,("Entity_0"))
  let $GRAPH_10 :=  
    for $node_AbstractParametricCurveSurface_0 in $doc_ObjectDescription
    let $value_AbstractParametricCurveSurface_0 := fn:data($node_AbstractParametricCurveSurface_0/@rdf:about)
    for $node_Process_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Process_0 := fn:data($node_Process_0/@rdf:about)
    where fn:exists($node_AbstractParametricCurveSurface_0) and fn:exists($node_Process_0) and $node_AbstractParametricCurveSurface_0/Nuvio:hasParticipant/@rdf:resource = $value_Process_0
    return
      <xqllib:result>
        <xqllib:var name="AbstractParametricCurveSurface_0">{$value_AbstractParametricCurveSurface_0}</xqllib:var>
        <xqllib:var name="Process_0">{$value_Process_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:and($GRAPH_9,$GRAPH_10,("Process_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_1,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 := xqllib:optional($GRAPH_0,$GRAPH_12,("USRPB200mini_0"))
  return
    $GRAPH_13
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200mini_0"))),("USRPB200mini_0"))
