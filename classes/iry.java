import java.io.Serializable;

public class iry implements Serializable {
  public static final String a = "extra_check_version_action";
  
  public static final int b = 500;
  
  public static final int c = 1000;
  
  public static final int d = 2000;
  
  public static final int e = 3;
  
  public static final int f = 2;
  
  @eks(a = "message")
  private String g;
  
  @eks(a = "code")
  private String h;
  
  @eks(a = "action")
  private String i;
  
  public String a() {
    return (this.g != null) ? this.g : "";
  }
  
  public String b() {
    return (this.h != null) ? this.h : "";
  }
  
  public int c() {
    try {
      return Integer.parseInt(this.i);
    } catch (NumberFormatException numberFormatException) {
      return 0;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\iry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */