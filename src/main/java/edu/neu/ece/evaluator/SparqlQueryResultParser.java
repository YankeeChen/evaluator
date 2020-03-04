package edu.neu.ece.evaluator;


import com.google.gson.Gson;

public class SparqlQueryResultParser {

	public static SparqlQueryResult parse(String jsonResult) {
		return new Gson().fromJson(jsonResult, SparqlQueryResult.class);
	}
}
