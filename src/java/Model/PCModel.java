/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Siddharth Patel
 */
public class PCModel {
     // instance variables
    private String firstName;
    private String lastName;
    private String pEmail;

    private Long pPhone;
    private String teamName;
    private String mEmail;
    private String entryFee;

    public PCModel() {
    }
       public PCModel(String firstName, String lastName, String pEmail, Long pPhone, String teamName, String mEmail, String entryFee) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.pEmail = pEmail;
        this.pPhone = pPhone; 
        this.teamName = teamName;
        this.mEmail = mEmail;
        this.entryFee = entryFee;
    }

    // 
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getpEmail() {
        return pEmail;
    }

    public void setpEmail(String pEmail) {
        this.pEmail = pEmail;
    }
    
    
    public Long getpPhone() {
        return pPhone;
    }

    public void setpPhone(Long pPhone) {
        this.pPhone = pPhone;
    }

    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    public String getmEmail() {
        return mEmail;
    }

    public void setmEmail(String mEmail) {
        this.mEmail = mEmail;
    }

    public String getEntryFee() {
        return entryFee;
    }

    public void setEntryFee(String entryFee) {
        this.entryFee = entryFee;
    }

    public String getFullName(){
        return firstName+ "  " +lastName;
    }
    
   
    
}
