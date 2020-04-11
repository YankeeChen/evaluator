import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_ElectronicSupportSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ElectronicSupportSystem"]
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:about)
    where fn:exists($node_ElectronicSupportSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    for $node_ElectronicSupportSystem_0 in $node_RadarJammer_0/Nuvio:partOf
    let $value_ElectronicSupportSystem_0 := fn:data($node_ElectronicSupportSystem_0/@rdf:resource)
    where fn:exists($value_ElectronicSupportSystem_0) and fn:exists($node_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="ElectronicSupportSystem_0">{$value_ElectronicSupportSystem_0}</xqllib:var>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_RadarJammer_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarJammer"]
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:about)
    where fn:exists($node_RadarJammer_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_XilinxZynq7020SoC_0 in $doc_ObjectDescription
    let $value_XilinxZynq7020SoC_0 := fn:data($node_XilinxZynq7020SoC_0/@rdf:about)
    for $node_RadarJammer_0 in $node_XilinxZynq7020SoC_0/Nuvio:partOf
    let $value_RadarJammer_0 := fn:data($node_RadarJammer_0/@rdf:resource)
    where fn:exists($value_RadarJammer_0) and fn:exists($node_XilinxZynq7020SoC_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarJammer_0">{$value_RadarJammer_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7020SoC_0">{$value_XilinxZynq7020SoC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_XilinxZynq7020SoC_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XilinxZynq7020SoC"]
    let $value_XilinxZynq7020SoC_0 := fn:data($node_XilinxZynq7020SoC_0/@rdf:about)
    where fn:exists($node_XilinxZynq7020SoC_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxZynq7020SoC_0">{$value_XilinxZynq7020SoC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_XilinxZynq7000Family_0 in $doc_ObjectDescription
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:about)
    for $node_XilinxZynq7020SoC_0 in $node_XilinxZynq7000Family_0/Nuvio:partOf
    let $value_XilinxZynq7020SoC_0 := fn:data($node_XilinxZynq7020SoC_0/@rdf:resource)
    where fn:exists($node_XilinxZynq7000Family_0) and fn:exists($value_XilinxZynq7020SoC_0)
    return
      <xqllib:result>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7020SoC_0">{$value_XilinxZynq7020SoC_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_XilinxZynq7000Family_0 in $doc_ObjectDescription
    let $value_XilinxZynq7000Family_0 := fn:data($node_XilinxZynq7000Family_0/@rdf:about)
    for $node_Object_0 in $node_XilinxZynq7000Family_0/RFDevice:isProducerOf
    let $value_Object_0 := fn:data($node_Object_0/@rdf:resource)
    where fn:exists($value_Object_0) and fn:exists($node_XilinxZynq7000Family_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
        <xqllib:var name="XilinxZynq7000Family_0">{$value_XilinxZynq7000Family_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_Object_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Object_0 := fn:data($node_Object_0/@rdf:about)
    where fn:exists($node_Object_0)
    return
      <xqllib:result>
        <xqllib:var name="Object_0">{$value_Object_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 := xqllib:and($GRAPH_7,$GRAPH_8,("Object_0"))
  let $GRAPH_10 := xqllib:and($GRAPH_6,$GRAPH_9,("XilinxZynq7000Family_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_5,$GRAPH_10,("XilinxZynq7020SoC_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_4,$GRAPH_11,("XilinxZynq7020SoC_0"))
  let $GRAPH_13 := ($GRAPH_3,$GRAPH_12)
  let $GRAPH_14 := xqllib:and($GRAPH_1,$GRAPH_13,("RadarJammer_0"))
  let $GRAPH_15 := xqllib:and($GRAPH_0,$GRAPH_14,("ElectronicSupportSystem_0"))
  return
    $GRAPH_15
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("ElectronicSupportSystem_0"))),("ElectronicSupportSystem_0"))
