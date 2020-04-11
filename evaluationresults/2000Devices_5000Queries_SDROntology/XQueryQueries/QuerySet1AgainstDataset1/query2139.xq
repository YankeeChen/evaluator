import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SurveillanceRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SurveillanceRadar"]
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:about)
    where fn:exists($node_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_DirectConversionReceiver_0 in $doc_ObjectDescription
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:about)
    for $node_SurveillanceRadar_0 in $node_DirectConversionReceiver_0/Nuvio:aggregateOf
    let $value_SurveillanceRadar_0 := fn:data($node_SurveillanceRadar_0/@rdf:resource)
    where fn:exists($node_DirectConversionReceiver_0) and fn:exists($value_SurveillanceRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="SurveillanceRadar_0">{$value_SurveillanceRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_NoiseFigure_0 in $doc_ObjectDescription
    let $value_NoiseFigure_0 := fn:data($node_NoiseFigure_0/@rdf:about)
    for $node_DirectConversionReceiver_0 in $node_NoiseFigure_0/RFDevice:hasNoiseFigure
    let $value_DirectConversionReceiver_0 := fn:data($node_DirectConversionReceiver_0/@rdf:resource)
    where fn:exists($value_DirectConversionReceiver_0) and fn:exists($node_NoiseFigure_0)
    return
      <xqllib:result>
        <xqllib:var name="DirectConversionReceiver_0">{$value_DirectConversionReceiver_0}</xqllib:var>
        <xqllib:var name="NoiseFigure_0">{$value_NoiseFigure_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_NoiseFigure_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NoiseFigure"]
    let $value_NoiseFigure_0 := fn:data($node_NoiseFigure_0/@rdf:about)
    where fn:exists($node_NoiseFigure_0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseFigure_0">{$value_NoiseFigure_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_NoiseFigure_0 in $node_Var0/Nuvio:hasValue
    let $value_NoiseFigure_0 := fn:data($node_NoiseFigure_0/@rdf:resource)
    where fn:exists($value_NoiseFigure_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="NoiseFigure_0">{$value_NoiseFigure_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#NonNegativeDecimalValue"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DataValue0 in $node_Var0/RFDevice:hasFloatValue
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := $GRAPH_6[(data(xqllib:var[@name="DataValue0"]) <= -26.88)]
  let $GRAPH_8 := xqllib:and($GRAPH_5,$GRAPH_7,("Var0"))
  let $GRAPH_9 := xqllib:and($GRAPH_4,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:and($GRAPH_3,$GRAPH_9,("NoiseFigure_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_2,$GRAPH_10,("NoiseFigure_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_1,$GRAPH_11,("DirectConversionReceiver_0"))
  let $GRAPH_13 := xqllib:and($GRAPH_0,$GRAPH_12,("SurveillanceRadar_0"))
  return
    $GRAPH_13
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SurveillanceRadar_0"))),("SurveillanceRadar_0"))
