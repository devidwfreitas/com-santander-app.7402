import java.util.ArrayList;
import java.util.Arrays;

public class kpl {
  @eks(a = "type")
  private String b;
  
  @eks(a = "description")
  private String c;
  
  public kpl(kph paramkph) {}
  
  public String a() {
    return this.b;
  }
  
  public boolean b() {
    ArrayList arrayList = new ArrayList(Arrays.asList((Object[])new String[] { 
            "0", "1", "2", "3", "4", "5", "6", "9", "19", "22", 
            "23", "29", "45", "47" }));
    return (this.b != null && arrayList.contains(this.b));
  }
  
  public boolean c() {
    ArrayList arrayList = new ArrayList(Arrays.asList((Object[])new String[] { "7", "8", "10", "16", "20", "30", "46", "48" }));
    return (this.b != null && arrayList.contains(this.b));
  }
  
  public String d() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */