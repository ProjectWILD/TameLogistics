package driver;


import com.graphhopper.jsprit.core.problem.driver.*;
import com.graphhopper.jsprit.core.util.Time;

public class PwildDriver implements Driver{
	
	private String id;
	private Time lastTimeDriven;
	private String CrewID; 
	

	public String getId() {
		return id;
	}
	
	public int calculateTimeSinceLastDrive(Time newTime) {
		//return newTime - lastTimeDriven;
		return 0;
	}

}
