package model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Deep
 */


public class Course {
    private int course_id;
    private String course_name;
    private String instructor;
    private String duration;
    private int credits;

    public int getCourse_id() { return course_id; }
    public void setCourse_id(int id) { this.course_id = id; }
    public String getCourse_name() { return course_name; }
    public void setCourse_name(String n) { this.course_name = n; }
    public String getInstructor() { return instructor; }
    public void setInstructor(String i) { this.instructor = i; }
    public String getDuration() { return duration; }
    public void setDuration(String d) { this.duration = d; }
    public int getCredits() { return credits; }
    public void setCredits(int c) { this.credits = c; }
}
