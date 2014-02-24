package com.timeinsponge.meeting.repository;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.timeinsponge.meeting.object.Event;
import com.timeinsponge.meeting.object.User;
import com.timeinsponge.meeting.object.Event.EventType;
import com.timeinsponge.meeting.query.EventQuery;
import com.timeinsponge.utils.Utils;

public class EventRepositoryDummyImpl implements EventRepository {

	private static List<Event> events = new ArrayList<Event>();
	static {
		Event e1 = Event.buildEvent().setTitle("Art Social")
				.setDescription("Do some art and have a beer")
				.setLocation("100 2nd St, Santa Clara, CA")
				.setType(EventType.SOCIAL)
				.setOwner(User.getOwner())
				.setEventId(Utils.generateRandomString(10));
		
		Event e2 = Event.buildEvent().setTitle("Elastic Search")
				.setDescription("elastic search study group")
				.setLocation("500 Market St., San Francisco, CA")
				.setType(EventType.TECH_TALK)
				.setOwner(User.getOwner())
				.setEventId(Utils.generateRandomString(10));

		Event e3 = Event.buildEvent().setTitle("Mexican food")
				.setDescription("Grab some mexican food with friends")
				.setLocation("126 Shattuck Ave., Berkeley, CA")
				.setType(EventType.DINNER)
				.setOwner(User.getOwner())
				.setEventId(Utils.generateRandomString(10));
		
		events.add(e1);
		events.add(e2);
		events.add(e3);
	}
	
	
	@Override
	public void addEvent(Event e) {
		events.add(e);
	}

	@Override
	public void removeEvent(Event e) {
		events.remove(e);
	}

	@Override
	public void updateEvent(Event e) {
	}

	@Override
	public List<Event> getEventList(EventQuery query) {
		return events;
	}

}