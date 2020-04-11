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
    for $node_USRPN300_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN300"]
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:about)
    where fn:exists($node_USRPN300_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPN300_0 in $node_Var0/Nuvio:aggregateOf
    let $value_USRPN300_0 := fn:data($node_USRPN300_0/@rdf:resource)
    where fn:exists($value_USRPN300_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN300_0">{$value_USRPN300_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_UnitOfMeasure_0 in $doc_ObjectDescription
    let $value_UnitOfMeasure_0 := fn:data($node_UnitOfMeasure_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_UnitOfMeasure_0) and fn:exists($node_Var0) and $node_UnitOfMeasure_0/Nuvio:expresses/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="UnitOfMeasure_0">{$value_UnitOfMeasure_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Modulation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LatitudeValueInDegree"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
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
  let $GRAPH_7 := $GRAPH_6[(data(xqllib:var[@name="DataValue0"]) > -124173592)]
  let $GRAPH_8 := xqllib:and($GRAPH_5,$GRAPH_7,("Var0"))
  let $GRAPH_9 := xqllib:optional($GRAPH_4,$GRAPH_8,("Var0"))
  let $GRAPH_10 := ($GRAPH_3,$GRAPH_9)
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:optional($GRAPH_0,$GRAPH_11,("USRPN300_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN300_0"))),("USRPN300_0"))
