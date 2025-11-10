package model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Deep
 */


public class Enrollment {
    private int enroll_id;
    private int student_id;
    private int course_id;
    private String enroll_date;
    private String status;

    public int getEnroll_id() { return enroll_id; }
    public void setEnroll_id(int id) { this.enroll_id = id; }
    public int getStudent_id() { return student_id; }
    public void setStudent_id(int id) { this.student_id = id; }
    public int getCourse_id() { return course_id; }
    public void setCourse_id(int id) { this.course_id = id; }
    public String getEnroll_date() { return enroll_date; }
    public void setEnroll_date(String d) { this.enroll_date = d; }
    public String getStatus() { return status; }
    public void setStatus(String s) { this.status = s; }
}
