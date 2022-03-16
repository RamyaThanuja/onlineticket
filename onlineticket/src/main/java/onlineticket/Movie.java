package onlineticket;
import java.util.Arrays;
import java.util.Base64;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
 
import org.springframework.stereotype.Component;
@Component
@Entity
@Table(name="movie")
public class Movie 
{
 
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="movie_id")
    private int id;

    @Column(name="movie_name")
    private String name;

    @Column(name="duration")
    private String duration;

    private byte[] image;  

    @Column(name = "image")
    public byte[] getImage() {
        return this.image;
    }

    private String base64Image;
    @Transient
    public String getBase64Image() {
        base64Image = Base64.getEncoder().encodeToString(this.image);
        return base64Image;
    }

    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
}
    @Column(name="language")
    private String language;
    
@Column(name="cast")
private String cast;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getDuration() {
	return duration;
}

public void setDuration(String duration) {
	this.duration = duration;
}

public String getLanguage() {
	return language;
}

public void setLanguage(String language) {
	this.language = language;
}

public String getCast() {
	return cast;
}

public void setCast(String cast) {
	this.cast = cast;
}

public void setImage(byte[] image) {
	this.image = image;
}

public Movie(String name, String duration, byte[] image, String base64Image, String language, String cast) {
	super();
	this.name = name;
	this.duration = duration;
	this.image = image;
	this.base64Image = base64Image;
	this.language = language;
	this.cast = cast;
}

public Movie() {
	super();
}

@Override
public String toString() {
	return "Movie [id=" + id + ", name=" + name + ", duration=" + duration + ", image=" + Arrays.toString(image)
			+ ", base64Image=" + base64Image + ", language=" + language + ", cast=" + cast + "]";
}


}

