import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPB2xx_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB2xx"]
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:about)
    where fn:exists($node_USRPB2xx_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_Var0 in $doc_ObjectDescription
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_USRPB2xx_0 in $node_Var0/RFDevice:supportsSpectrumSensing
    let $value_USRPB2xx_0 := fn:data($node_USRPB2xx_0/@rdf:resource)
    where fn:exists($value_USRPB2xx_0) and fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPB2xx_0">{$value_USRPB2xx_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Entity"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_4 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#LongValue"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/RFDevice.owl#Time"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_Var0 in $node_Var1/Nuvio:hasValue
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_Var1)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 := xqllib:optional($GRAPH_5,$GRAPH_6,("Var0"))
  let $GRAPH_8 := xqllib:and($GRAPH_4,$GRAPH_7,("Var0"))
  let $GRAPH_9 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Situation"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    for $node_XC3SD3400AFPGA_0 in $doc_ObjectDescription
    let $value_XC3SD3400AFPGA_0 := fn:data($node_XC3SD3400AFPGA_0/@rdf:about)
    where fn:exists($node_Var0) and fn:exists($node_XC3SD3400AFPGA_0) and $node_XC3SD3400AFPGA_0/Nuvio:relevantIndividual/@rdf:resource = $value_Var0
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="XC3SD3400AFPGA_0">{$value_XC3SD3400AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_10 :=  
    for $node_Var0 in $doc_ObjectDescription[Nuvio:relevantIndividual/@rdf:resource = "http://ece.neu.edu/ontologies/ObjectDescription4000.owl#IEDJammer_instance75"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_12 :=  
    for $node_XC3SD3400AFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC3SD3400AFPGA"]
    let $value_XC3SD3400AFPGA_0 := fn:data($node_XC3SD3400AFPGA_0/@rdf:about)
    where fn:exists($node_XC3SD3400AFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC3SD3400AFPGA_0">{$value_XC3SD3400AFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_13 :=  
    for $node_XC7K325TFPGA_0 in $doc_ObjectDescription
    let $value_XC7K325TFPGA_0 := fn:data($node_XC7K325TFPGA_0/@rdf:about)
    for $node_XC3SD3400AFPGA_0 in $node_XC7K325TFPGA_0/Nuvio:partOf
    let $value_XC3SD3400AFPGA_0 := fn:data($node_XC3SD3400AFPGA_0/@rdf:resource)
    where fn:exists($value_XC3SD3400AFPGA_0) and fn:exists($node_XC7K325TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC3SD3400AFPGA_0">{$value_XC3SD3400AFPGA_0}</xqllib:var>
        <xqllib:var name="XC7K325TFPGA_0">{$value_XC7K325TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_XC7K325TFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC7K325TFPGA"]
    let $value_XC7K325TFPGA_0 := fn:data($node_XC7K325TFPGA_0/@rdf:about)
    where fn:exists($node_XC7K325TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC7K325TFPGA_0">{$value_XC7K325TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_15 := xqllib:and($GRAPH_13,$GRAPH_14,("XC7K325TFPGA_0"))
  let $GRAPH_16 := ($GRAPH_12,$GRAPH_15)
  let $GRAPH_17 := xqllib:and($GRAPH_10,$GRAPH_16,())
  let $GRAPH_18 := xqllib:and($GRAPH_9,$GRAPH_17,("Var0","XC3SD3400AFPGA_0"))
  let $GRAPH_19 := xqllib:optional($GRAPH_8,$GRAPH_18,("Var0"))
  let $GRAPH_20 := ($GRAPH_3,$GRAPH_19)
  let $GRAPH_21 := xqllib:and($GRAPH_1,$GRAPH_20,("Var0"))
  let $GRAPH_22 := xqllib:and($GRAPH_0,$GRAPH_21,("USRPB2xx_0"))
  return
    $GRAPH_22
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPB2xx_0"))),("USRPB2xx_0"))
