package servlet;


import domain.Gender;
import domain.Patient;
import service.PatientServiceLocal;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("add-patient")
public class AddPatientServlet extends HttpServlet {

    @Inject
    PatientServiceLocal patientService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        Gender gender  = getGenderFromString(request.getParameter("gender"));
        LocalDate dateOfBirth = LocalDate.parse(request.getParameter("dateOfBirth"));

        Patient patient = new Patient(name, surname, email, dateOfBirth, gender);
        patientService.addPatient(patient);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user-added.jsp");
        requestDispatcher.forward(request, response);




    }

    public Gender getGenderFromString(String gender){
        return gender.equals("man") ? Gender.MAN : Gender.WOMAN;
    }
}
