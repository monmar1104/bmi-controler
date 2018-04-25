package domain;

import javax.persistence.*;

@Entity
public class BMIDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(nullable = false, unique = true)
    private int bmiDetailsId;
    @OneToOne
    Patient patient;
    @Column(nullable = false)
    private double weight;
    @Column(nullable = false)
    private double height;
    private double bmi;

    public int getBmiDetailsId() {
        return bmiDetailsId;
    }

    public void setBmiDetailsId(int bmiDetailsId) {
        this.bmiDetailsId = bmiDetailsId;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getBmi() {
        return bmi;
    }

    public void setBmi(double bmi) {
        this.bmi = bmi;
    }



}
