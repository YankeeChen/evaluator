package edu.neu.ece.evaluator;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class SparqlQueryResult {
	Head head;
	Results results;

	public List<String> getVariables() {
		return head.vars;
	}

	public List<Map<String, String>> getAllBindings() {
		List<Map<String, String>> bindings = new ArrayList<>();
		if (results == null || results.bindings == null) {
			return bindings;
		}
		for (Map<String, TypedValue> m : results.bindings) {
			if (m == null) {
				continue;
			}
			Map<String, String> map = new HashMap<>();
			for (String var : m.keySet()) {
				if (m.get(var) != null) {
					map.put(var, m.get(var).getValue());
				}
			}
			bindings.add(map);
		}
		return bindings;
	}

	public Set<String> getDistinctBindingsForVariable(String variable) {
		TreeSet<String> bindings = new TreeSet<>();
		if (results == null || results.bindings == null) {
			return bindings;
		}
		for (Map<String, TypedValue> m : results.bindings) {
			if (m == null) {
				continue;
			}
			TypedValue tv = m.get(variable);
			if (tv == null) {
				continue;
			}
			if (tv.getValue() == null) {
				continue;
			}
			bindings.add(tv.getValue());
		}
		return bindings;
	}
}

class Head {
	List<String> vars;
}

class Results {
	List<Map<String, TypedValue>> bindings;
}

class TypedValue {
	String type;
	String value;

	String getValue() {
		return this.value;
	}
}