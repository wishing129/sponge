package com.timeinsponge.rest;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.timeinsponge.meeting.object.Event;
import com.timeinsponge.meeting.query.EventQueryByEventId;
import com.timeinsponge.meeting.query.EventQueryByOwner;
import com.timeinsponge.meeting.repository.EventRepository;
import com.timeinsponge.meeting.repository.EventRepositoryDummyImpl;

/**
 * Root resource (exposed at "rest/meeting" path)
 */
@Path("meeting")
public class MeetingResourse {

	@Path("{eventId}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Event getEvent(@PathParam("eventId") String eventId) {
		
		EventRepository repo = new EventRepositoryDummyImpl();
		List<Event> results = repo.getEvents(new EventQueryByEventId(eventId));
		
		if(results.size()!=0)	return results.get(0);
		else 					return null;
	}
	
    @Path("owner/{ownerId}")
	@GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Event> getEvents(@PathParam("ownerId") String ownerId) {
    	
    	EventRepository repo = new EventRepositoryDummyImpl();
    	List<Event> results = repo.getEvents(new EventQueryByOwner(ownerId));
    	return results;
    }
    
    
}