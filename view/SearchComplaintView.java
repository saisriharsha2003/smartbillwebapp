package view;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import utility.Utility;

public class SearchComplaintView {
	public static HashMap<String, String> fetchComplaintDetailsById(int compid) throws ClassNotFoundException, SQLException
	{
		HashMap<String, String> mp1=new HashMap<String, String>();
		PreparedStatement p1 = Utility.getPreparedStatement("select * from complaint where complaint_id = ?");
		p1.setInt(1, compid);
		ResultSet rs= p1.executeQuery();
		if(rs.next())
		{
			mp1.put("complaint_id", String.valueOf(compid));
			mp1.put("contact_person", rs.getString("contact_person"));
			mp1.put("mobile", rs.getString("mobile"));
			mp1.put("problem", rs.getString("problem"));
			mp1.put("address", rs.getString("address"));
			mp1.put("status", rs.getString("complaint_status"));
		}
		return mp1;
	}
}
