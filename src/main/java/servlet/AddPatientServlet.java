package servlet;


import domain.Gender;
import domain.Patient;
import domain.Roles;
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
        String password = request.getParameter("password");
        Gender gender  = getGenderFromString(request.getParameter("gender"));
        LocalDate dateOfBirth = LocalDate.parse(request.getParameter("dateOfBirth"));
        if(patientService.isEmailExist(email)){
            request.setAttribute("emeilExistMessage", "Podany adres Email juz istnieje!");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("add-patient.jsp");
            requestDispatcher.forward(request, response);
        }
        Patient patient = new Patient(name, surname, email, patientService.getHexPassword(password), dateOfBirth, gender);
        Roles roles = new Roles(email, "admin", "admin");
        patientService.addPatient(patient, roles);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user-added.jsp");
        requestDispatcher.forward(request, response);
    }

    public Gender getGenderFromString(String gender){
        return gender.equals("man") ? Gender.MAN : Gender.WOMAN;
    }
}
