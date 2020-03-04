package edu.neu.ece.evaluator;

/**
 * This class defines metrics.
 * 
 * @author Yanji Chen
 * @version 1.0
 * @since 2019-10-05
 */
public class Metric {
	/**
	 * Query ID.
	 */
	public int queryID;

	/**
	 * Total number of devices.
	 */
	public int totalNumberOfDevices;

	/**
	 * Total number of matching devices.
	 */
	public int numberOfMatchingDevice;

	/**
	 * Total number of non-matching devices.
	 */
	public int numberOfNonMatchingDevice;

	/**
	 * The number of devices retrieved.
	 */
	public int numberOfResultsRetrieved;

	/**
	 * The number of relevant devices (matching devices) retrieved.
	 */
	public int numberOfRelevantRetrieved;

	/**
	 * Precision metric.
	 */
	public double precision;

	/**
	 * Recall metric.
	 */
	public double recall;

	/**
	 * F-measure metric.
	 */
	public double f_measure;

	/**
	 * Device registration time.
	 */
	public long registrationTime;

	/**
	 * Query processing time.
	 */
	public long queryTime;

	/**
	 * Query encoding size.
	 */
	public long queryEncodingSize;

	/**
	 * Constructor.
	 * 
	 * @param deviceNum
	 *            The number of devices.
	 */
	public Metric(int deviceNum) {
		totalNumberOfDevices = deviceNum;
	}

	/**
	 * Reset metrics.
	 */
	public void reset() {
		queryID = 0;

		// totalNumberOfDevices = 0;
		numberOfMatchingDevice = 0;
		numberOfNonMatchingDevice = 0;

		numberOfResultsRetrieved = 0;
		numberOfRelevantRetrieved = 0;
		precision = 0;
		recall = 0;
		f_measure = 0;

		// registrationTime = 0;
		queryTime = 0;

		queryEncodingSize = 0;
	}
}
