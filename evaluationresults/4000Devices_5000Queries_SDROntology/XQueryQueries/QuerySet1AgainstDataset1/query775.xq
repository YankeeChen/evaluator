import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace skos = "http://www.w3.org/2004/02/skos/core#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_RadarWarningReceiver_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#RadarWarningReceiver"]
    let $value_RadarWarningReceiver_0 := fn:data($node_RadarWarningReceiver_0/@rdf:about)
    where fn:exists($node_RadarWarningReceiver_0)
    return
      <xqllib:result>
        <xqllib:var name="RadarWarningReceiver_0">{$value_RadarWarningReceiver_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_RadarWarningReceiver_0 in $doc_ObjectDescription
    let $value_RadarWarningReceiver_0 := fn:data($node_RadarWarningReceiver_0/@rdf:about)
    for $node_Var0 in $node_RadarWarningReceiver_0/RFDevice:supportsTransmitting
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_RadarWarningReceiver_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="RadarWarningReceiver_0">{$value_RadarWarningReceiver_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Var0 in $node_Entity_0/RFDevice:hasBandwidthRange
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_Situation_0 in $doc_ObjectDescription
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_Situation_0) and $node_Situation_0/Nuvio:expresses/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://www.w3.org/2004/02/skos/core#OrderedCollection"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_List_0 in $doc_ObjectDescription
    let $value_List_0 := fn:data($node_List_0/@rdf:about)
    where fn:exists($node_Entity_0) and fn:exists($node_List_0) and $node_List_0/skos:memberList/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="List_0">{$value_List_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#FrequencyUnit"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 :=  
    for $node_DimensionlessUnit_0 in $doc_ObjectDescription
    let $value_DimensionlessUnit_0 := fn:data($node_DimensionlessUnit_0/@rdf:about)
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Value"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_DimensionlessUnit_0) and fn:exists($node_Entity_0) and $node_DimensionlessUnit_0/Nuvio:hasUnitOfMeasure/@rdf:resource = $value_Entity_0
    return
      <xqllib:result>
        <xqllib:var name="DimensionlessUnit_0">{$value_DimensionlessUnit_0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_9 :=  
    for $node_DimensionlessUnit_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#DimensionlessUnit"]
    let $value_DimensionlessUnit_0 := fn:data($node_DimensionlessUnit_0/@rdf:about)
    where fn:exists($node_DimensionlessUnit_0)
    return
      <xqllib:result>
        <xqllib:var name="DimensionlessUnit_0">{$value_DimensionlessUnit_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 := xqllib:and($GRAPH_8,$GRAPH_9,("DimensionlessUnit_0"))
  let $GRAPH_11 := xqllib:and($GRAPH_7,$GRAPH_10,("Entity_0"))
  let $GRAPH_12 := xqllib:and($GRAPH_6,$GRAPH_11,("Entity_0"))
  let $GRAPH_13 :=  
    for $node_Spartan3ADSPFPGA_0 in $doc_ObjectDescription
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:about)
    for $node_Situation_0 in $node_Spartan3ADSPFPGA_0/Nuvio:relevantIndividual
    let $value_Situation_0 := fn:data($node_Situation_0/@rdf:resource)
    where fn:exists($value_Situation_0) and fn:exists($node_Spartan3ADSPFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Situation_0">{$value_Situation_0}</xqllib:var>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Spartan3ADSPFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#Spartan3ADSPFPGA"]
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:about)
    where fn:exists($node_Spartan3ADSPFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 :=  
    for $node_RFFrontEnd_0 in $doc_ObjectDescription
    let $value_RFFrontEnd_0 := fn:data($node_RFFrontEnd_0/@rdf:about)
    for $node_Spartan3ADSPFPGA_0 in $node_RFFrontEnd_0/Nuvio:partOf
    let $value_Spartan3ADSPFPGA_0 := fn:data($node_Spartan3ADSPFPGA_0/@rdf:resource)
    where fn:exists($node_RFFrontEnd_0) and fn:exists($value_Spartan3ADSPFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="RFFrontEnd_0">{$value_RFFrontEnd_0}</xqllib:var>
        <xqllib:var name="Spartan3ADSPFPGA_0">{$value_Spartan3ADSPFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 := xqllib:and($GRAPH_14,$GRAPH_15,("Spartan3ADSPFPGA_0"))
  let $GRAPH_17 := xqllib:and($GRAPH_13,$GRAPH_16,("Spartan3ADSPFPGA_0"))
  let $GRAPH_18 := ($GRAPH_12,$GRAPH_17)
  let $GRAPH_19 := xqllib:and($GRAPH_4,$GRAPH_18,("Entity_0","Situation_0"))
  let $GRAPH_20 := xqllib:and($GRAPH_3,$GRAPH_19,("Entity_0"))
  let $GRAPH_21 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#CoverJamming"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_22 := ($GRAPH_20,$GRAPH_21)
  let $GRAPH_23 := xqllib:and($GRAPH_1,$GRAPH_22,("Var0"))
  let $GRAPH_24 := xqllib:and($GRAPH_0,$GRAPH_23,("RadarWarningReceiver_0"))
  return
    $GRAPH_24
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("RadarWarningReceiver_0"))),("RadarWarningReceiver_0"))
