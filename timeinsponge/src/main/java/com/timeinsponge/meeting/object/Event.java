package com.timeinsponge.meeting.object;

import java.util.List;

public class Event {
	
	private String eventId;
	private EventType type;
	private User owner;
	private String title;
	private String description;
	private String location;
	private List<EventUser> participants;
	
	public static Event buildEvent() {
		return new Event();
	}
	
	
	public String getEventId() {
		return eventId;
	}


	public Event setEventId(String eventId) {
		this.eventId = eventId;
		return this;
	}


	public EventType getType() {
		return type;
	}


	public Event setType(EventType type) {
		this.type = type;
		return this;
	}


	public User getOwner() {
		return owner;
	}


	public Event setOwner(User owner) {
		this.owner = owner;
		return this;
	}


	public String getTitle() {
		return title;
	}


	public Event setTitle(String title) {
		this.title = title;
		return this;
	}


	public String getDescription() {
		return description;
	}


	public Event setDescription(String description) {
		this.description = description;
		return this;
	}


	public String getLocation() {
		return location;
	}


	public Event setLocation(String location) {
		this.location = location;
		return this;
	}


	public List<EventUser> getParticipants() {
		return participants;
	}


	public Event setParticipants(List<EventUser> participants) {
		this.participants = participants;
		return this;
	}


	public enum EventType {
		DINNER, MOVIE, TECH_TALK, BAR, SOCIAL, OTHER
	}
}
