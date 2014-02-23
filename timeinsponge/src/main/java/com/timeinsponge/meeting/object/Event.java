package com.timeinsponge.meeting.object;

public class Event {
	
	public String eventId;
	public String owner;
	public String title;
	public String description;
	public String location;
	
	static public Event getAnEvent() {
		Event e = new Event();
		e.eventId = "qwertyuiop";
		e.owner = "JinghanXu";
		e.title = "Art Social";
		e.description = "have some fun";
		e.location = "San Francisco";
		
		return e;
	}
}
