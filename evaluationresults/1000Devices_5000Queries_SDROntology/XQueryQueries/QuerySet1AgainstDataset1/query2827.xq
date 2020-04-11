import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription1000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ElectronicAttackSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicAttackSystem"]
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:about)
    where fn:exists($node_ElectronicAttackSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_TerrainBounceJamming_0 in $doc_ObjectDescription
    let $value_TerrainBounceJamming_0 := fn:data($node_TerrainBounceJamming_0/@rdf:about)
    for $node_ElectronicAttackSystem_0 in $node_TerrainBounceJamming_0/RFDevice:supportsJamming
    let $value_ElectronicAttackSystem_0 := fn:data($node_ElectronicAttackSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicAttackSystem_0) and fn:exists($node_TerrainBounceJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicAttackSystem_0">{$value_ElectronicAttackSystem_0}</xqllib:var>
        <xqllib:var name="TerrainBounceJamming_0">{$value_TerrainBounceJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_2 :=  
    for $node_TerrainBounceJamming_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#TerrainBounceJamming"]
    let $value_TerrainBounceJamming_0 := fn:data($node_TerrainBounceJamming_0/@rdf:about)
    where fn:exists($node_TerrainBounceJamming_0)
    return
      <xqllib:result>
        <xqllib:var name="TerrainBounceJamming_0">{$value_TerrainBounceJamming_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 := xqllib:and($GRAPH_1,$GRAPH_2,("TerrainBounceJamming_0"))
  let $GRAPH_4 := xqllib:and($GRAPH_0,$GRAPH_3,("ElectronicAttackSystem_0"))
  return
    $GRAPH_4
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicAttackSystem_0"))),("ElectronicAttackSystem_0"))
