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
    for $node_USRPN3xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN3xx"]
    let $value_USRPN3xx_0 := fn:data($node_USRPN3xx_0/@rdf:about)
    where fn:exists($node_USRPN3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN3xx_0">{$value_USRPN3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPN3xx_0 in $doc_ObjectDescription
    let $value_USRPN3xx_0 := fn:data($node_USRPN3xx_0/@rdf:about)
    for $node_Object_0 in $node_USRPN3xx_0/Nuvio:aggregateOf
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_USRPN3xx_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="USRPN3xx_0">{$value_USRPN3xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Object_0 in $doc_ObjectDescription
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    for $node_Time_0 in $node_Object_0/RFDevice:hasWidth
    let $value_Time_0 := fn:data($node_Time_0/@rdf:resource)
    where fn:exists($node_Object_0) and fn:exists($value_Time_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="Time_0">{$value_Time_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Time_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Time"]
    let $value_Time_0 := fn:data($node_Time_0/@rdf:about)
    where fn:exists($node_Time_0)
    return
      <xqllib:result>
        <xqllib:var name="Time_0">{$value_Time_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Time_0 in $doc_ObjectDescription
    let $value_Time_0 := fn:data($node_Time_0/@rdf:about)
    for $node_Var0 in $node_Time_0/Nuvio:hasValue
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Time_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Time_0">{$value_Time_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
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
  let $GRAPH_7 := $GRAPH_6[(data(xqllib:var[@name="DataValue0"]) > xs:decimal("0"))]
  let $GRAPH_8 := xqllib:and($GRAPH_5,$GRAPH_7,("Var0"))
  let $GRAPH_9 := ($GRAPH_4,$GRAPH_8)
  let $GRAPH_10 := xqllib:optional($GRAPH_2,$GRAPH_9,("Time_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Object_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("USRPN3xx_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN3xx_0"))),("USRPN3xx_0"))
