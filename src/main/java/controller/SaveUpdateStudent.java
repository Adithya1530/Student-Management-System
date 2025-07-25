package controller;

import java.io.IOException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import dto.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(value = "/saveUpdateStudent")
public class SaveUpdateStudent extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		Student student = (Student)session.getAttribute("oldStudent");
		
//		Student student = req.getSession().getAttribute("oldStudent");
		
		student.setName(req.getParameter("name"));
		student.setEmail(req.getParameter("email"));
		student.setGender(req.getParameter("gender"));
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Adithya");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		entityTransaction.begin();
		entityManager.merge(student);
		entityTransaction.commit();
		
		resp.getWriter().write("<h1> data updated");

	}

}
