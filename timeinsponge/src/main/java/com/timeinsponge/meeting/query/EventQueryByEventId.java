package com.timeinsponge.meeting.query;

import com.timeinsponge.meeting.object.Event;

public class EventQueryByEventId implements EventQuery {

	private String eventId;
	
	public EventQueryByEventId(String eventId) {
		this.eventId = eventId;
	}
	
	@Override
	public String formatSql() {
		
		return null;
	}

	@Override
	public boolean specified(Event e) {
		return e.getEventId().equals(eventId);
	}

}
