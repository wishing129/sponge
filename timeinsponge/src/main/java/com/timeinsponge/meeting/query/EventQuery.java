package com.timeinsponge.meeting.query;

import com.timeinsponge.meeting.object.Event;

public interface EventQuery {

	String formatSql();
	boolean specified(Event e);
}
