package com.timeinsponge.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.timeinsponge.meeting.object.Event;

/**
 * Root resource (exposed at "myresource/meeting" path)
 */
@Path("meeting")
public class Meeting {

    /**
     * Method handling HTTP GET requests. The returned object will be sent
     * to the client as "text/plain" media type.
     *
     * @return String that will be returned as a text/plain response.
     */
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public Event getIt() {
    	Event e = Event.getAnEvent();
    	return e;
    }
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Event getEvent() {
    	
    	Event e = Event.getAnEvent();
    	return e;
    }
}