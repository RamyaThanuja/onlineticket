package onlineticket;
import java.util.List;
import org.springframework.stereotype.Service;
@Service
public interface MovieDao {
	public List<Movie> getShowMovie();
	public List<UpcomingMovie> getShowUpcomingMovie();
	public Movie getMovie(int id);
	public UpcomingMovie getUpcomingMovie(int id);
}