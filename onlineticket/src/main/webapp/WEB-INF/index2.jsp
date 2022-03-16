<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
.upcomingmovieslist{
text-align:center;
background-color:#00CED1;
padding:30px 30px;
}
</style>
 <div class="upcomingmovieslist">
 <H2><b>Welcome to BookShow Upcoming Movie</b></H2>
<table class="table table-striped table-bordered">
      <tr>   
      <th>Movie Id</th>
       <th>Movie Image</th>
       <th>Movie Name</th>
       <th>Cast&Crew</th>
       <th>Language</th>
       <th>Duration</th>
      </tr>
      <!-- loop over and print our customers -->
       <tr> 
         <td><b><c:out value="${upcomingmovielist.id}"/></b></td>
         <td><img src="data:image/jpg;base64,${upcomingmovielist.base64Image}"class="img-rounded"width="200" height="200"></td>
        <td><b><c:out value="${upcomingmovielist.name}" /></b></td>
        <td><b><c:out value="${upcomingmovielist.cast}" /></b></td>
        <td><b><c:out value="${upcomingmovielist.language}" /></b></td>
        <td><b><c:out value="${upcomingmovielist.duration}" /></b></td>
        </tr>
</table>
</div>