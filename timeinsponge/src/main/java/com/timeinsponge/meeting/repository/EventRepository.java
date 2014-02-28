package com.timeinsponge.meeting.repository;


import java.util.List;

import com.timeinsponge.meeting.object.Event;
import com.timeinsponge.meeting.query.EventQuery;

public interface EventRepository {

	void addEvent(Event e);
	void removeEvent(Event e);
	void updateEvent(Event e);
	
	List<Event> getEvents(EventQuery query);
}
