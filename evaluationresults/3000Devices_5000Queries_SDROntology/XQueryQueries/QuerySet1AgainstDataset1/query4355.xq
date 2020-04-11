import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
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
    for $node_USRPE313_0 in $node_Var0/RFDevice:supportsTransmitting
    let $value_USRPE313_0 := fn:data($node_USRPE313_0/@rdf:resource)
    where fn:exists($value_USRPE313_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPE313_0">{$value_USRPE313_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_CrossPolarizationJamming_0 in $doc_ObjectDescription
    let $value_CrossPolarizationJamming_0 := fn:data($node_CrossPolarizationJamming_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_CrossPolarizationJamming_0) and fn:exists($node_Var0) and $node_CrossPolarizationJamming_0/RFDevice:supportsTuning/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="CrossPolarizationJamming_0">{$value_CrossPolarizationJamming_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Quantity_0 in $doc_ObjectDescription
    let $value_Quantity_0 := fn:data($node_Quantity_0/@rdf:about)
    for $node_CrossPolarizationJamming_0 in $node_Quantity_0/Nuvio:hasProcessQuantity
    let $value_CrossPolarizationJamming_0 := fn:data($node_CrossPolarizationJamming_0/@rdf:resource)
    where fn:exists($value_CrossPolarizationJamming_0) and fn:exists($node_Quantity_0)
    return
      <xqllib:result>
        <xqllib:var name="CrossPolarizationJamming_0">{$value_CrossPolarizationJamming_0}</xqllib:var>
        <xqllib:var name="Quantity_0">{$value_Quantity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 := xqllib:and($GRAPH_3,$GRAPH_4,("CrossPolarizationJamming_0"))
  let $GRAPH_6 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationContent"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("Var0"))
  let $GRAPH_8 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Process"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_PhaseShiftKeyingModulation_0 in $node_Var0/Nuvio:subprocessOf
    let $value_PhaseShiftKeyingModulation_0 := fn:data($node_PhaseShiftKeyingModulation_0/@rdf:resource)
    where fn:exists($value_PhaseShiftKeyingModulation_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="PhaseShiftKeyingModulation_0">{$value_PhaseShiftKeyingModulation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_PhaseShiftKeyingModulation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#PhaseShiftKeyingModulation"]
    let $value_PhaseShiftKeyingModulation_0 := fn:data($node_PhaseShiftKeyingModulation_0/@rdf:about)
    where fn:exists($node_PhaseShiftKeyingModulation_0)
    return
      <xqllib:result>
        <xqllib:var name="PhaseShiftKeyingModulation_0">{$value_PhaseShiftKeyingModulation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:optional($GRAPH_8,$GRAPH_9,("PhaseShiftKeyingModulation_0"))
  let $GRAPH_11 := ($GRAPH_7,$GRAPH_10)
  let $GRAPH_12 := xqllib:and($GRAPH_1,$GRAPH_11,("Var0"))
  let $GRAPH_13 := xqllib:and($GRAPH_0,$GRAPH_12,("USRPE313_0"))
  return
    $GRAPH_13
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPE313_0"))),("USRPE313_0"))
