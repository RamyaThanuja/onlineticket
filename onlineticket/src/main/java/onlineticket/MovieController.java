package onlineticket;
import javax.transaction.Transactional;
import org.apache.tomcat.jni.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.io.InputStream;
import java.util.List;
@Controller
@Transactional
@Repository
@EnableWebMvc
@RequestMapping(value = "/movie", method = RequestMethod.GET)
public class MovieController {
	@Autowired
	private MovieDao movieDaoImpl;
	@RequestMapping(value = "/list")
	public String listMovies(Model m) {
		System.out.println(" inside Movie Controller inside List method 25");
		List<Movie> movies = movieDaoImpl.getShowMovie();
		m.addAttribute("movieslist", movies);
		List<UpcomingMovie> movie = movieDaoImpl.getShowUpcomingMovie();
		m.addAttribute("upcomingmovieslist", movie);
		return "index";
	}
	@GetMapping(value = "/moviedetails")
	public String view(@RequestParam("id") int id,Model model){		
		System.out.println("inside getmovie controller "+id);
//		  ModelAndView model = new ModelAndView(); 
		 Movie moviedescription =movieDaoImpl.getMovie(id); 
		  System.out.println("inside getmovie controller "+moviedescription.toString());
			 model.addAttribute("currentmovieslist", moviedescription);
		return "index1";
	}
	@GetMapping(value = "/upcomingmoviedetails")
	public String view1(@RequestParam("id") int id ,Model model) {
		System.out.println("inside getupcomingmovie controller "+id);
//		ModelAndView model = new ModelAndView();
		UpcomingMovie upcomingmoviedescription = movieDaoImpl.getUpcomingMovie(id);
		  System.out.println("inside getmovie controller "+upcomingmoviedescription.toString());
		model.addAttribute ("upcomingmovielist",upcomingmoviedescription);		
		return "index2";
	}
}