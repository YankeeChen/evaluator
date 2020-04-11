import module namespace xqllib="http://www.xqllib.com" at "..\XQuerymodule\xqllib.xqm";
declare namespace Nuvio = "http://cogradio.org/ont/Nuvio.owl#";
declare namespace ObjectDescription = "http://ece.neu.edu/ontologies/ObjectDescription3000.owl#";
declare namespace RFDevice = "http://ece.neu.edu/ontologies/RFDevice.owl#";
declare namespace SDR = "http://ece.neu.edu/ontologies/SDR.owl#";
declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";
let $doc_ObjectDescription := doc("database")/rdf:RDF/*
let $result :=  
  let $GRAPH_0 :=  
    for $node_USRPN210_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPN210"]
    let $value_USRPN210_0 := fn:data($node_USRPN210_0/@rdf:about)
    where fn:exists($node_USRPN210_0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN210_0">{$value_USRPN210_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_1 :=  
    for $node_USRPN210_0 in $doc_ObjectDescription
    let $value_USRPN210_0 := fn:data($node_USRPN210_0/@rdf:about)
    for $node_Var0 in $node_USRPN210_0/Nuvio:aggregateOf
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_USRPN210_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="USRPN210_0">{$value_USRPN210_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_3 :=  
    for $node_InformationRepresentation_0 in $doc_ObjectDescription
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    for $node_Var0 in $node_InformationRepresentation_0/Nuvio:expresses
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($node_InformationRepresentation_0) and fn:exists($value_Var0)
    return
      <xqllib:result>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_5 :=  
    for $node_XC7K325TFPGA_0 in $doc_ObjectDescription
    let $value_XC7K325TFPGA_0 := fn:data($node_XC7K325TFPGA_0/@rdf:about)
    for $node_Var0 in $node_XC7K325TFPGA_0/Nuvio:relevantIndividual
    let $value_Var0 := fn:data($node_Var0/@rdf:resource)
    where fn:exists($value_Var0) and fn:exists($node_XC7K325TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
        <xqllib:var name="XC7K325TFPGA_0">{$value_XC7K325TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_6 :=  
    for $node_XC7K325TFPGA_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#XC7K325TFPGA"]
    let $value_XC7K325TFPGA_0 := fn:data($node_XC7K325TFPGA_0/@rdf:about)
    where fn:exists($node_XC7K325TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="XC7K325TFPGA_0">{$value_XC7K325TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_7 :=  
    for $node_Var1 in $doc_ObjectDescription
    let $value_Var1 := fn:data($node_Var1/@rdf:about)
    for $node_XC7K325TFPGA_0 in $node_Var1/RFDevice:isProducerOf
    let $value_XC7K325TFPGA_0 := fn:data($node_XC7K325TFPGA_0/@rdf:resource)
    where fn:exists($node_Var1) and fn:exists($value_XC7K325TFPGA_0)
    return
      <xqllib:result>
        <xqllib:var name="Var1">{$value_Var1}</xqllib:var>
        <xqllib:var name="XC7K325TFPGA_0">{$value_XC7K325TFPGA_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_8 := xqllib:and($GRAPH_6,$GRAPH_7,("XC7K325TFPGA_0"))
  let $GRAPH_9 := xqllib:and($GRAPH_5,$GRAPH_8,("XC7K325TFPGA_0"))
  let $GRAPH_10 :=  
    for $node_Var0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Object"]
    let $value_Var0 := fn:data($node_Var0/@rdf:about)
    where fn:exists($node_Var0)
    return
      <xqllib:result>
        <xqllib:var name="Var0">{$value_Var0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_11 := ($GRAPH_9,$GRAPH_10)
  let $GRAPH_12 := xqllib:optional($GRAPH_3,$GRAPH_11,("Var0"))
  let $GRAPH_13 :=  
    for $node_InformationEntity_0 in $doc_ObjectDescription
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:about)
    for $node_InformationRepresentation_0 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#InformationRepresentation"]
    let $value_InformationRepresentation_0 := fn:data($node_InformationRepresentation_0/@rdf:about)
    where fn:exists($node_InformationEntity_0) and fn:exists($node_InformationRepresentation_0) and $node_InformationEntity_0/Nuvio:representedBy/@rdf:resource = $value_InformationRepresentation_0
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="InformationRepresentation_0">{$value_InformationRepresentation_0}</xqllib:var>
      </xqllib:result>
  let $GRAPH_14 :=  
    for $node_Var2 in $doc_ObjectDescription
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    for $node_InformationEntity_0 in $node_Var2/Nuvio:informationSource
    let $value_InformationEntity_0 := fn:data($node_InformationEntity_0/@rdf:resource)
    where fn:exists($value_InformationEntity_0) and fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="InformationEntity_0">{$value_InformationEntity_0}</xqllib:var>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_16 :=  
    for $node_Var2 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://ece.neu.edu/ontologies/SDR.owl#USRPB200-210"]
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    where fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_17 :=  
    for $node_Var3 in $doc_ObjectDescription
    let $value_Var3 := fn:data($node_Var3/@rdf:about)
    for $node_Var2 in $node_Var3/RFDevice:hasNoiseFigure
    let $value_Var2 := fn:data($node_Var2/@rdf:resource)
    where fn:exists($value_Var2) and fn:exists($node_Var3)
    return
      <xqllib:result>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
        <xqllib:var name="Var3">{$value_Var3}</xqllib:var>
      </xqllib:result>
  let $GRAPH_18 := ($GRAPH_16,$GRAPH_17)
  let $GRAPH_19 :=  
    for $node_Var2 in $doc_ObjectDescription[rdf:type/@rdf:resource = "http://cogradio.org/ont/Nuvio.owl#Attribute"]
    let $value_Var2 := fn:data($node_Var2/@rdf:about)
    where fn:exists($node_Var2)
    return
      <xqllib:result>
        <xqllib:var name="Var2">{$value_Var2}</xqllib:var>
      </xqllib:result>
  let $GRAPH_20 := xqllib:and($GRAPH_18,$GRAPH_19,("Var2"))
  let $GRAPH_21 := xqllib:and($GRAPH_14,$GRAPH_20,("Var2"))
  let $GRAPH_22 := xqllib:and($GRAPH_13,$GRAPH_21,("InformationEntity_0"))
  let $GRAPH_23 := ($GRAPH_12,$GRAPH_22)
  let $GRAPH_24 := xqllib:and($GRAPH_1,$GRAPH_23,("Var0"))
  let $GRAPH_25 := xqllib:and($GRAPH_0,$GRAPH_24,("USRPN210_0"))
  return
    $GRAPH_25
return
  xqllib:formatSparqlResult(xqllib:distinct-deep(xqllib:getSparqlResult($result,("USRPN210_0"))),("USRPN210_0"))
