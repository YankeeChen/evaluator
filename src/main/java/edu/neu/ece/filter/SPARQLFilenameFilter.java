package edu.neu.ece.filter;

import java.io.File;
import java.io.FilenameFilter;

/**
 * Implement FilenameFilter to retrieve only SPARQL files
 * 
 * @author Yanji Chen
 * @version 1.0
 * @since 2019-10-02
 */
public class SPARQLFilenameFilter implements FilenameFilter {
	@Override
	public boolean accept(File dir, String name) {
		if (name.endsWith(".rq")) {
			return true;
		} else {
			return false;
		}
	}
}
