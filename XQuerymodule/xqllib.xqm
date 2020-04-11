module namespace xqllib = "http://www.xqllib.com";

declare function xqllib:matches ($result1 as node(), $result2 as node(), $variables as xs:string*) as xs:boolean {
  if(not(fn:empty($variables))) then
    let $result :=
      for $var in $variables
      where not(($result1/xqllib:var/@name = $var and $result2/xqllib:var/@name = $var and data($result1/xqllib:var[@name = $var]) = data($result2/xqllib:var[@name = $var])) or ($result1/xqllib:var/@name = $var and not(fn:exists($result2/xqllib:var[@name = $var]))) or (not(fn:exists($result1/xqllib:var[@name = $var])) and $result2/xqllib:var/@name = $var))
      return fn:true()
    return not(fn:exists($result))
  else fn:true()
};

declare function xqllib:and ($result1 as node()*, $result2 as node()*, $variables as xs:string*) as node()* {
  for $element1 in $result1
  for $element2 in $result2
  where xqllib:matches($element1, $element2, $variables)
  return
  <result>
    { xqllib:distinct-deep(($element1/*, $element2/*)) }
  </result>
};

declare function xqllib:optional ($result1 as node()*, $result2 as node()*, $variables as xs:string*) as node()* {
  for $element1 in $result1
  let $join :=
    for $element2 in $result2
    where xqllib:matches($element1, $element2, $variables)
    return
    <result>
	    { xqllib:distinct-deep(($element1/*, $element2/*)) }
	  </result>
  return
    if($join) then
      $join
    else
      <result>{ $element1/* }</result>
};

declare function xqllib:ignoreCase ($input) {
  if(string(number($input)) = 'NaN') then
    fn:lower-case($input)
  else
    $input
}; 

declare function xqllib:distinct-deep ($nodes as node()*) as node()* {
    for $seq in (1 to count($nodes))
    return $nodes[$seq][not(xqllib:is-node-in-sequence-deep-equal(
                          .,$nodes[position() < $seq]))]
};

declare function xqllib:is-node-in-sequence-deep-equal($node as node()?, $seq as node()* ) as xs:boolean {
   some $nodeInSeq in $seq satisfies deep-equal($nodeInSeq, $node)
};
 
declare function xqllib:getSparqlResult ($result as node()*, $variable as xs:string*) as node()* {
  for $element1 in $result
  let $child :=
    for $str in $variable
    return
	  $element1/xqllib:var[@name = $str]
  return 	
  <xqllib:result>
   {$child}
  </xqllib:result>
};

declare function xqllib:formatSparqlResult ($result as node()*, $variable as xs:string*) as node() {
  let $results := 
    for $element1 in $result
    let $child :=
      for $str in $variable
      return
	    $element1/xqllib:var[@name = $str]
    return 	
    <xqllib:result>
     {$child}
    </xqllib:result>
  return 
  <xqllib:results>
    {$results}
  </xqllib:results>
};