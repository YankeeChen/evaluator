import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_SearchRadar_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#SearchRadar"]
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    where fn:exists($node_SearchRadar_0)
    return
      <xqllib:result>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_SearchRadar_0 in $doc_ObjectDescription
    let $value_SearchRadar_0 := fn:data($node_SearchRadar_0/@rdf:about)
    for $node_Var0 in $node_SearchRadar_0/RFDevice:supportsJamming
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_SearchRadar_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="SearchRadar_0">{$value_SearchRadar_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_InverseGainJamming_0 in $doc_ObjectDescription
    let $value_InverseGainJamming_0 := fn:data($node_InverseGainJamming_0/@rdf:about)
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_InverseGainJamming_0) and fn:exists($node_Var0) and $node_InverseGainJamming_0/RFDevice:supportsTransmitting/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="InverseGainJamming_0">{$value_InverseGainJamming_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_InverseGainJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#InverseGainJamming"]
    let $value_InverseGainJamming_0 := fn:data($node_InverseGainJamming_0/@rdf:about)
    where fn:exists($node_InverseGainJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="InverseGainJamming_0">{$value_InverseGainJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 := xqllib:and($GRAPH_2,$GRAPH_3,("InverseGainJamming_0"))
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_DimensionlessUnit_0 in $node_Var0/Nuvio:hasUnitOfMeasure
    let $value_DimensionlessUnit_0 := fn:data($node_DimensionlessUnit_0/@rdf:resource)
    where fn:exists($value_DimensionlessUnit_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="DimensionlessUnit_0">{$value_DimensionlessUnit_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 := xqllib:and($GRAPH_4,$GRAPH_5,("Var0"))
  let $GRAPH_7 := xqllib:and($GRAPH_1,$GRAPH_6,("Var0"))
  let $GRAPH_8 := xqllib:optional($GRAPH_0,$GRAPH_7,("SearchRadar_0"))
  return
    $GRAPH_8
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("SearchRadar_0"))),("SearchRadar_0"))
