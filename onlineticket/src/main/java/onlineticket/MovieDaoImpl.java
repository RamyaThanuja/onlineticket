package onlineticket;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
//@Transactional
@Repository
@Service
public class MovieDaoImpl implements MovieDao {
	@Autowired
	private SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	@Override
	public List<Movie> getShowMovie() {
		System.out.println("inside MoviedaoImpl class inside list movie method 22");
		Session session = sessionFactory.getCurrentSession();
		// Movie movie = Session.get(Movie.class,id);
		// List <Movie> movie = Session.get(Movie.class);
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Movie> cq = cb.createQuery(Movie.class);
		Root<Movie> root = cq.from(Movie.class);
		cq.select(root);
		Query query = session.createQuery(cq);
		List<Movie> list = query.getResultList();
		return list;
	}

	@Override
	public List<UpcomingMovie> getShowUpcomingMovie() {
		// TODO Auto-generated method stub
		System.out.println("inside MoviedaoImpl class inside list movie method 36");
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<UpcomingMovie> cq = cb.createQuery(UpcomingMovie.class);
		Root<UpcomingMovie> root = cq.from(UpcomingMovie.class);
		cq.select(root);
		Query query = session.createQuery(cq);
		List<UpcomingMovie> list = query.getResultList();
		return list;
	} 
	@Override
	public Movie getMovie(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		System.out.println("implementation class line 52 " + id);
		Movie movie = currentSession.get(Movie.class, id);
		System.out.println("line 55 Implementation class before return statement" + movie.toString());
		return movie;
	} 
	@Override
	public UpcomingMovie getUpcomingMovie(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		System.out.println("implementation class line 61 "+id);
		UpcomingMovie movie1 = currentSession.get(UpcomingMovie.class,id);
		System.out.println("line 63 Implementation class before return statement" +movie1.toString());
		return movie1;
	}
}