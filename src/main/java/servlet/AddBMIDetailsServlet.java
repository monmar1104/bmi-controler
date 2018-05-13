package servlet;


import domain.BMIDetails;
import domain.Patient;
import service.BMISeviceLocal;
import service.PatientServiceLocal;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

@WebServlet("add-bmi-details")
public class AddBMIDetailsServlet extends HttpServlet {
    @Inject
    PatientServiceLocal patientService;

    @Inject
    BMISeviceLocal bmiSevice;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Double weight = Double.parseDouble(request.getParameter("weight"));
        Double height = Double.parseDouble(request.getParameter("height"));
        Patient patient = patientService.getPatientByEmail((String) request.getSession().getAttribute("login"));
        Double bmi = bmiSevice.calculateBMI(weight,height);
        BMIDetails bmiDetails = new BMIDetails(patient, weight, height, bmi);
        bmiSevice.addBMIDetails(bmiDetails);
        request.setAttribute("weight", weight);
        request.setAttribute("height", height);
        request.setAttribute("bmi", "Twoje BMI wynosi: "+BigDecimal.valueOf(bmi).setScale(2,2));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("add-bmi-details.jsp");
        requestDispatcher.forward(request, response);
    }
}
