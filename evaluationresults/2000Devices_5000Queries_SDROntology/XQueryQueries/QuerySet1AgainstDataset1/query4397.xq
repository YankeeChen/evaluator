import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription2000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace xsd = "http://www.w3.org/2001/XMLSchema#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_JammingSystem_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#JammingSystem"]
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:about)
    where fn:exists($node_JammingSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_JammingSystem_0 in $node_Entity_0/RFDevice:hasCapability
    let $value_JammingSystem_0 := fn:data($node_JammingSystem_0/@rdf:resource)
    where fn:exists($node_Entity_0) and fn:exists($value_JammingSystem_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="JammingSystem_0">{$value_JammingSystem_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC6SLX75FPGA"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_XC3SD3400AFPGA_0 in $doc_ObjectDescription
    let $value_XC3SD3400AFPGA_0 := fn:data($node_XC3SD3400AFPGA_0/@rdf:about)
    for $node_Entity_0 in $node_XC3SD3400AFPGA_0/Nuvio:partOf
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_XC3SD3400AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="XC3SD3400AFPGA_0">{$value_XC3SD3400AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_XC3SD3400AFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC3SD3400AFPGA"]
    let $value_XC3SD3400AFPGA_0 := fn:data($node_XC3SD3400AFPGA_0/@rdf:about)
    where fn:exists($node_XC3SD3400AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC3SD3400AFPGA_0">{$value_XC3SD3400AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:and($GRAPH_5,$GRAPH_6,("XC3SD3400AFPGA_0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("Entity_0"))
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_Entity_0 in $node_Var0/Nuvio:informationSource
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:resource)
    where fn:exists($value_Entity_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#ADC"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := xqllib:optional($GRAPH_9,$GRAPH_10,("Var0"))
  let $GRAPH_13 :=  
    for $node_Entity_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LongitudeValue"]
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    where fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Entity_0 in $doc_ObjectDescription
    let $value_Entity_0 := fn:data($node_Entity_0/@rdf:about)
    for $node_DataValue0 in $node_Entity_0/Nuvio:hasPrecision
    let $value_DataValue0 := fn:data($node_DataValue0)
    where fn:exists($value_DataValue0) and fn:exists($node_Entity_0)
    return
      <xqllib:result>
        <xqllib:var name="DataValue0">{$value_DataValue0}</xqllib:var>
        <xqllib:var name="Entity_0">{$value_Entity_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := $GRAPH_14[(data(xqllib:var[@name="DataValue0"]) >= 1793432139)]
  let $GRAPH_16 := ($GRAPH_13,$GRAPH_15)
  let $GRAPH_17 := xqllib:and($GRAPH_11,$GRAPH_16,("Entity_0"))
  let $GRAPH_18 := xqllib:and($GRAPH_8,$GRAPH_17,("Entity_0"))
  let $GRAPH_19 := ($GRAPH_3,$GRAPH_18)
  let $GRAPH_20 := xqllib:and($GRAPH_1,$GRAPH_19,("Entity_0"))
  let $GRAPH_21 := xqllib:optional($GRAPH_0,$GRAPH_20,("JammingSystem_0"))
  return
    $GRAPH_21
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("JammingSystem_0"))),("JammingSystem_0"))
