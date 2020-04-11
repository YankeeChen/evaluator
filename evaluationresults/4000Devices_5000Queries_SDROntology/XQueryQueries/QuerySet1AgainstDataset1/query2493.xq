import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN210_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN210"]
    let $value_USRPN210_0 := fn:data($node_USRPN210_0/@rdf:about)
    where fn:exists($node_USRPN210_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN210_0">{$value_USRPN210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPN210_0 in $node_Var0/Nuvio:compositeOf
    let $value_USRPN210_0 := fn:data($node_USRPN210_0/@rdf:resource)
    where fn:exists($value_USRPN210_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN210_0">{$value_USRPN210_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DAC"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Component_0 in $doc_ObjectDescription
    let $value_Component_0 := fn:data($node_Component_0/@rdf:about)
    for $node_Var0 in $node_Component_0/Nuvio:aggregateOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Component_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Component_0">{$value_Component_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Component_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Component"]
    let $value_Component_0 := fn:data($node_Component_0/@rdf:about)
    where fn:exists($node_Component_0)
    return
      <xqllib:result>
        <xqllib:var name="Component_0">{$value_Component_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("Component_0"))
  let $GRAPH_6 := xqllib:and($GRAPH_2,$GRAPH_5,("Var0"))
  let $GRAPH_7 :=  
    for $node_Var0 in $doc_ObjectDescription[@rdf:about="http://ece.neu.edu/ontologies/SDR.owl#Freq_400MHz"]/RFDevice:hasLevel
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/RFDevice:hasResolution
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:optional($GRAPH_7,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:optional($GRAPH_6,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_1,$GRAPH_10,("Var0"))
  let $GRAPH_12 := xqllib:and($GRAPH_0,$GRAPH_11,("USRPN210_0"))
  return
    $GRAPH_12
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN210_0"))),("USRPN210_0"))
