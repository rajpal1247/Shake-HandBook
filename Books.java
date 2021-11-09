package model;


public class Books
{
    private int id;
    private String bname;
    private String aname;
    private String email;
    private String pwd;
    private String cpwd;
    private String ip;

    public Books() {
    }

    public Books(int id, String bname, String aname, String email, String pwd, String cpwd, String ip) {
        this.id = id;
        this.bname = bname;
        this.aname = aname;
        this.email = email;
        this.pwd = pwd;
        this.cpwd = cpwd;
        this.ip = ip;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getCpwd() {
        return cpwd;
    }

    public void setCpwd(String cpwd) {
        this.cpwd = cpwd;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    
    
    
    
    
}
