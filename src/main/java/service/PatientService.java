package service;

import domain.Patient;
import domain.Roles;
import org.jboss.crypto.CryptoUtil;
import repository.PatientRepository;

import javax.ejb.Stateless;
import javax.inject.Inject;
@Stateless
public class PatientService implements PatientServiceLocal {

    @Inject
    PatientRepository patientRepository;

    @Override
    public void addPatient(Patient patient, Roles roles){
        patientRepository.addPatient(patient, roles);
    }

    @Override
    public boolean isEmailExist(String email) {
        return patientRepository.getPatientByEmail(email)!=null;
    }

    @Override
    public String getHexPassword(String password) {
        return CryptoUtil.createPasswordHash("MD5", "hex", null, null, password);
    }
}
