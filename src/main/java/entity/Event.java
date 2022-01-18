package entity;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "events", schema = "j2ee_project")
public class Event {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "title")
    private String title;
    @Basic
    @Column(name = "description")
    private String description;
    @Basic
    @Column(name = "occurs_at")
    private Timestamp occursAt;
    @Basic
    @Column(name = "address")
    private String address;
    @Basic
    @Column(name = "image_url")
    private String imageUrl;
    @Basic
    @Column(name = "user_id")
    private Integer userId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getOccursAt() {
        return occursAt;
    }

    public void setOccursAt(Timestamp occursAt) {
        this.occursAt = occursAt;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Event events = (Event) o;

        if (id != events.id) return false;
        if (title != null ? !title.equals(events.title) : events.title != null) return false;
        if (description != null ? !description.equals(events.description) : events.description != null) return false;
        if (occursAt != null ? !occursAt.equals(events.occursAt) : events.occursAt != null) return false;
        if (address != null ? !address.equals(events.address) : events.address != null) return false;
        if (imageUrl != null ? !imageUrl.equals(events.imageUrl) : events.imageUrl != null) return false;
        if (userId != null ? !userId.equals(events.userId) : events.userId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (occursAt != null ? occursAt.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (imageUrl != null ? imageUrl.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        return result;
    }
}
