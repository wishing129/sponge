package com.timeinsponge.meeting.object;

import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class User {

	public String userId;
	public String username;
	public String email;
	public String timezone;
	public Date last_login_time;
	public Date last_update_time;
	public Date created_time;

	transient String password;
	
	public static User getOwner() {
		User u = new User();
		u.userId = "abcdefg";
		u.username = "JinghanXu";
		u.email = "jinghanx.com";
		u.timezone = TimeZone.getDefault().getDisplayName();
		
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.HOUR, -1);
		u.last_login_time = cal.getTime();
		cal.add(Calendar.DATE, -7);
		u.last_update_time = cal.getTime();
		cal.add(Calendar.MONTH, -1);
		u.created_time = cal.getTime();
		
		return u;
	}
}
