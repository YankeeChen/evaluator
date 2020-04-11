import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
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
  let $GRAPH_2 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/RFDevice:hasGain
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadioComponent"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_ARMProcessor_0 in $doc_ObjectDescription
    let $value_ARMProcessor_0 := fn:data($node_ARMProcessor_0/@rdf:about)
    for $node_Var0 in $node_ARMProcessor_0/Nuvio:partOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_ARMProcessor_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="ARMProcessor_0">{$value_ARMProcessor_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_ADC_0 in $doc_ObjectDescription
    let $value_ADC_0 := fn:data($node_ADC_0/@rdf:about)
    for $node_ARMProcessor_0 in $node_ADC_0/Nuvio:partOf
    let $value_ARMProcessor_0 := fn:data($node_ARMProcessor_0/@rdf:resource)
    where fn:exists($node_ADC_0) and fn:exists($value_ARMProcessor_0)
    return
      <xqllib:result>
        <xqllib:var name="ADC_0">{$value_ADC_0}</xqllib:var>
        <xqllib:var name="ARMProcessor_0">{$value_ARMProcessor_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("ARMProcessor_0"))
  let $GRAPH_8 := ($GRAPH_4,$GRAPH_7)
  let $GRAPH_9 := xqllib:and($GRAPH_2,$GRAPH_8,("Var0"))
  let $GRAPH_10 := xqllib:and($GRAPH_1,$GRAPH_9,("Var0"))
  let $GRAPH_11 := xqllib:and($GRAPH_0,$GRAPH_10,("USRPN300_0"))
  return
    $GRAPH_11
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN300_0"))),("USRPN300_0"))
