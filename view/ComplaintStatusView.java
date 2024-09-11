package view;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import utility.Utility;

public class ComplaintStatusView {
	public static List<HashMap<String, String>> fetchAllComplaints(int compid) throws ClassNotFoundException, SQLException
	{
		List<HashMap<String, String>> lm = new ArrayList<HashMap<String, String>>();
		HashMap<String, String> mp1=new HashMap<String, String>();

		PreparedStatement p1 = Utility.getPreparedStatement("select * from complaint where complaint_id = ?");
		p1.setInt(1, compid);
		ResultSet rs = p1.executeQuery();
		while(rs.next())
		{
			mp1.put("complaint_id", String.valueOf(compid));
			mp1.put("contact_person", rs.getString("contact_person"));
			mp1.put("mobile", rs.getString("mobile"));
			mp1.put("problem", rs.getString("problem"));
			mp1.put("address", rs.getString("address"));
			mp1.put("status", rs.getString("complaint_status"));
			lm.add(mp1);
		}
		return lm;
	}
	
	public static int fetchComplaintId(long cid) throws ClassNotFoundException, SQLException
	{
		PreparedStatement p1 = Utility.getPreparedStatement("select * from complaint where consumer_id = ?");
		p1.setLong(1, cid);
		ResultSet rs = p1.executeQuery();
		int compid = 0;
		while(rs.next())
		{
			compid = rs.getInt("complaint_id");
		}
		return compid;
	}

}
