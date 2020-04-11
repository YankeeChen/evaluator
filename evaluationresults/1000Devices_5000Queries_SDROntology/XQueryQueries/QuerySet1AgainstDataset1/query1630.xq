import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace sf = "http://www.opengis.net/ont/sf#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB200mini_i_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200mini-i"]
    let $value_USRPB200mini_i_0 := fn:data($node_USRPB200mini_i_0/@rdf:about)
    where fn:exists($node_USRPB200mini_i_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_i_0">{$value_USRPB200mini_i_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPB200mini_i_0 in $node_Var0/RFDevice:supportsTuning
    let $value_USRPB200mini_i_0 := fn:data($node_USRPB200mini_i_0/@rdf:resource)
    where fn:exists($value_USRPB200mini_i_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB200mini_i_0">{$value_USRPB200mini_i_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InverseGainJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationEntity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    where fn:exists($node_Var0) and fn:exists($node_Var1) and $node_Var1/Nuvio:informationSource/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_DataValue0 in $node_Var1/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := $GRAPH_6[(data(xqllib:var[@name="DataValue0"]) != 1120258449)]
  let $GRAPH_8 := ($GRAPH_5,$GRAPH_7)
  let $GRAPH_9 :=  
    for $node_DeceptiveJamming_0 in $doc_ObjectDescription
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_DeceptiveJamming_0) and fn:exists($node_Var0) and $node_DeceptiveJamming_0/Nuvio:relevantIndividual/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Triangle_0 in $doc_ObjectDescription
    let $value_Triangle_0 := fn:data($node_Triangle_0/@rdf:about)
    for $node_Var0 in $node_Triangle_0/Nuvio:relevantIndividual
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Triangle_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Triangle_0">{$value_Triangle_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 :=  
    for $node_Triangle_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.opengis.net/ont/sf#Triangle"]
    let $value_Triangle_0 := fn:data($node_Triangle_0/@rdf:about)
    where fn:exists($node_Triangle_0)
    return
      <xqllib:result>
        <xqllib:var name="Triangle_0">{$value_Triangle_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 := xqllib:and($GRAPH_10,$GRAPH_11,("Triangle_0"))
  let $GRAPH_13 :=  
    for $node_DeceptiveJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#DeceptiveJamming"]
    let $value_DeceptiveJamming_0 := fn:data($node_DeceptiveJamming_0/@rdf:about)
    where fn:exists($node_DeceptiveJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="DeceptiveJamming_0">{$value_DeceptiveJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 := xqllib:and($GRAPH_12,$GRAPH_13,())
  let $GRAPH_15 := xqllib:and($GRAPH_9,$GRAPH_14,("DeceptiveJamming_0","Var0"))
  let $GRAPH_16 := xqllib:and($GRAPH_8,$GRAPH_15,("Var0"))
  let $GRAPH_17 := xqllib:and($GRAPH_3,$GRAPH_16,("Var0"))
  let $GRAPH_18 := xqllib:and($GRAPH_2,$GRAPH_17,("Var0"))
  let $GRAPH_19 := xqllib:and($GRAPH_1,$GRAPH_18,("Var0"))
  let $GRAPH_20 := xqllib:optional($GRAPH_0,$GRAPH_19,("USRPB200mini_i_0"))
  return
    $GRAPH_20
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB200mini_i_0"))),("USRPB200mini_i_0"))
