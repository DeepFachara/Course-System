package model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Deep
 */


public class Student {
    private int student_id;
    private String name;
    private String email;
    private String password;
    private String contact_no;

    public int getStudent_id() { return student_id; }
    public void setStudent_id(int id) { this.student_id = id; }
    public String getName() { return name; }
    public void setName(String n) { this.name = n; }
    public String getEmail() { return email; }
    public void setEmail(String e) { this.email = e; }
    public String getPassword() { return password; }
    public void setPassword(String p) { this.password = p; }
    public String getContact_no() { return contact_no; }
    public void setContact_no(String c) { this.contact_no = c; }
}
