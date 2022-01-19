package database;

import entity.Event;

import java.sql.*;
import java.util.ArrayList;

public class DBConnection {
    public static ArrayList<Event> findEvents() {
        ArrayList<Event> events = new ArrayList<Event>();

        try{
            Class.forName ("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee_project", "root", "");
            Statement stmt = conn.createStatement();

            ResultSet rset = stmt.executeQuery("SELECT * FROM events");

            while(rset.next()) {
                Event event = new Event();

                event.setId(rset.getInt("id"));
                event.setTitle(rset.getString("title"));
                event.setDescription(rset.getString("description"));
                event.setOccursAt(rset.getDate("occurs_at"));
                event.setImageUrl(rset.getString("image_url"));
                event.setAddress(rset.getString("address"));

                events.add(event);
            }

            rset.close();
            stmt.close();
            conn.close();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }

        return events;
    }
}