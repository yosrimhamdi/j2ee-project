package database;

import entity.Event;
import entity.User;

import java.sql.*;
import java.util.ArrayList;

public class DBConnection {
    public static ArrayList<Event> findEvents() {
        ArrayList<Event> events = new ArrayList<Event>();

        try{
            Class.forName ("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee_project", "root", "");
            Statement stmt = conn.createStatement();

            ResultSet rset = stmt.executeQuery("SELECT * FROM events ORDER BY occurs_at ASC");

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

    public static void createEvent(Event event) {
        try{
            Class.forName ("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee_project", "root", "");
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO events(title, description, occurs_at, address, image_url) VALUES(?, ?, ?, ?,?)");

            stmt.setString(1, event.getTitle());
            stmt.setString(2, event.getDescription());
            stmt.setDate(3, event.getOccursAt());
            stmt.setString(4, event.getAddress());
            stmt.setString(5, event.getImageUrl());

            stmt.executeUpdate();

            stmt.close();
            conn.close();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
    }

    public static void deleteEvent(Integer id) {
        try{
            Class.forName ("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee_project", "root", "");
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM events WHERE id = ?");

            stmt.setInt(1, id);

            stmt.executeUpdate();

            stmt.close();
            conn.close();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
    }

    public static Event findEvent(String id) {
        Event event = new Event();

        try{
            Class.forName ("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee_project", "root", "");
            Statement stmt = conn.createStatement();

            ResultSet rset = stmt.executeQuery("SELECT * FROM events WHERE id = " + id);

            while(rset.next()) {


                event.setId(rset.getInt("id"));
                event.setTitle(rset.getString("title"));
                event.setDescription(rset.getString("description"));
                event.setOccursAt(rset.getDate("occurs_at"));
                event.setImageUrl(rset.getString("image_url"));
                event.setAddress(rset.getString("address"));
            }

            rset.close();
            stmt.close();
            conn.close();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }

        return event;
    }

    public static void updateEvent(Event event) {
        try{
            Class.forName ("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee_project", "root", "");
            PreparedStatement stmt = conn.prepareStatement("UPDATE events SET title = ?, description = ?, occurs_at = ?, address = ?, image_url = ? WHERE id = ?");

            stmt.setString(1, event.getTitle());
            stmt.setString(2, event.getDescription());
            stmt.setDate(3, event.getOccursAt());
            stmt.setString(4, event.getAddress());
            stmt.setString(5, event.getImageUrl());
            stmt.setInt(6, event.getId());

            stmt.executeUpdate();

            stmt.close();
            conn.close();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
    }

    public static User login(String email, String password) {
        User user = null;

        try{
            Class.forName ("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/j2ee_project", "root", "");
            Statement stmt = conn.createStatement();

            ResultSet rset = stmt.executeQuery("SELECT * FROM user WHERE email = ? and password = ?");

            while(rset.next()) {
                user = new User();

                user.setId(rset.getInt("id"));
                user.setEmail(rset.getString("email"));
                user.setFirstName(rset.getString("first_name"));
                user.setLastName(rset.getString("last_name"));
                user.setPassword(rset.getString("password"));
            }

            rset.close();
            stmt.close();
            conn.close();
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }

        return user;
    }
}
