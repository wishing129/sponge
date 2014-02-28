package com.timeinsponge.meeting.query;

import com.timeinsponge.meeting.object.Event;

public class EventQueryByOwner implements EventQuery {

	private String ownerId;
	
	public EventQueryByOwner(String ownerId) {
		this.ownerId = ownerId;
	}
	
	@Override
	public String formatSql() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean specified(Event e) {
		return e.getOwnerId().equals(ownerId);
	}

}
