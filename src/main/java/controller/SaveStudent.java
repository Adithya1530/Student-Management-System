package controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import dto.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(value = "/saveStudent")
public class SaveStudent extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String gender = req.getParameter("gender");
		long phno = Long.parseLong(req.getParameter("phno"));
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Adithya");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		entityTransaction.begin();
		Student student = new Student(name, email, phno, gender);
		entityManager.persist(student);
		entityTransaction.commit();
		
//		RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
//		req.setAttribute("msg", "Student Saved Successfully");
//		dispatcher.include(req, resp);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("addSuccess.jsp");
		dispatcher.forward(req, resp);

	}
}
