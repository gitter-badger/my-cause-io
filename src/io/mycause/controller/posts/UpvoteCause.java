package io.mycause.controller.posts;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UpvoteCause {

	@RequestMapping(value="/upvote")
	public ModelAndView upvotePost(@RequestParam("postId") int id) {

		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/dbb");
			Connection conn = ds.getConnection();

			// create mySQL insert statement.
			// --> make syntax below the insertStatement once we have a way to determine
			// what the post_id is: "update posts set upvotes=upvotes+1 where post_id=X"
			
			String insertStatement = "UPDATE maindb.posts set upvotes=upvotes+1 where post_id=" + id ;

			// create the mySQL insert preparedstatement
			PreparedStatement insertPreparedStatement = conn.prepareStatement(insertStatement);

			// execute the preparedstatement
			insertPreparedStatement.execute();
			
			//repopulate page with cause info
			conn = ds.getConnection();
			Statement s = conn.createStatement();
			ResultSet results = s.executeQuery("select * from maindb.posts where post_id="+id); // this line selects
			String[] postInfo = new String[7];
		
			results.next();
				String postHeadline = results.getString(2);
				String postDescription = results.getString(3);
				String postCategoryId = results.getString(4);
				String postUpvotes = results.getString(8);
				String userId = results.getString(9);
				int catId = results.getInt(4);
				String imageLink = "";

				//retrieve email from database
				ResultSet result = s.executeQuery("select email from maindb.users where user_id = ' " + userId + " '");
				
				switch (catId) {
				case 1:
					imageLink = "images/moneyIconSmall.png";
					break;
				case 2:
					imageLink = "images/timeIconSmall.png";
					break;
				case 3:
					imageLink = "images/foodIconSmall.png";
					break;
				case 4:
					imageLink = "images/resourcesIconSmall.png";
					break;
				}	
				
					postInfo[0] = postHeadline;
					postInfo[1] = postDescription;
					postInfo[2] = postCategoryId;
					postInfo[3] = postUpvotes;
					postInfo[4] = Integer.toString(id);
					postInfo[6] = imageLink;
					
					if (result.next())
						postInfo[5] = result.getString(1);
			conn.close();		
			return new ModelAndView("cause", "info", postInfo);
			
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView ("error", "message", e.getMessage());
		}
	}
}
