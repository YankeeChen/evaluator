import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPE312_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPE312"]
    let $value_USRPE312_0 := fn:data($node_USRPE312_0/@rdf:about)
    where fn:exists($node_USRPE312_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE312_0">{$value_USRPE312_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPE312_0 in $node_Var0/Nuvio:aggregateOf
    let $value_USRPE312_0 := fn:data($node_USRPE312_0/@rdf:resource)
    where fn:exists($value_USRPE312_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE312_0">{$value_USRPE312_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ADC"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_DirectionalAntenna_0 in $doc_ObjectDescription
    let $value_DirectionalAntenna_0 := fn:data($node_DirectionalAntenna_0/@rdf:about)
    for $node_Var0 in $node_DirectionalAntenna_0/Nuvio:partOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_DirectionalAntenna_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DirectionalAntenna_0">{$value_DirectionalAntenna_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_DipoleAntenna_0 in $doc_ObjectDescription
    let $value_DipoleAntenna_0 := fn:data($node_DipoleAntenna_0/@rdf:about)
    for $node_DirectionalAntenna_0 in $node_DipoleAntenna_0/Nuvio:aggregateOf
    let $value_DirectionalAntenna_0 := fn:data($node_DirectionalAntenna_0/@rdf:resource)
    where fn:exists($node_DipoleAntenna_0) and fn:exists($value_DirectionalAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="DipoleAntenna_0">{$value_DipoleAntenna_0}</xqllib:var>
        <xqllib:var name="DirectionalAntenna_0">{$value_DirectionalAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_DipoleAntenna_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DipoleAntenna"]
    let $value_DipoleAntenna_0 := fn:data($node_DipoleAntenna_0/@rdf:about)
    where fn:exists($node_DipoleAntenna_0)
    return
      <xqllib:result>
        <xqllib:var name="DipoleAntenna_0">{$value_DipoleAntenna_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Gain_0 in $doc_ObjectDescription
    let $value_Gain_0 := fn:data($node_Gain_0/@rdf:about)
    for $node_DipoleAntenna_0 in $node_Gain_0/RFDevice:hasLevel
    let $value_DipoleAntenna_0 := fn:data($node_DipoleAntenna_0/@rdf:resource)
    where fn:exists($value_DipoleAntenna_0) and fn:exists($node_Gain_0)
    return
      <xqllib:result>
        <xqllib:var name="DipoleAntenna_0">{$value_DipoleAntenna_0}</xqllib:var>
        <xqllib:var name="Gain_0">{$value_Gain_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Gain_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Gain"]
    let $value_Gain_0 := fn:data($node_Gain_0/@rdf:about)
    where fn:exists($node_Gain_0)
    return
      <xqllib:result>
        <xqllib:var name="Gain_0">{$value_Gain_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("Gain_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("DipoleAntenna_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_4,$GRAPH_9,("DipoleAntenna_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_3,$GRAPH_10,("DirectionalAntenna_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_2,$GRAPH_11,("Var0"))
  let $GRAPH_13 := xqllib:and($GRAPH_1,$GRAPH_12,("Var0"))
  let $GRAPH_14 := xqllib:and($GRAPH_0,$GRAPH_13,("USRPE312_0"))
  return
    $GRAPH_14
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE312_0"))),("USRPE312_0"))
