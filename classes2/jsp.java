import java.io.Serializable;
import java.util.Calendar;

public class jsp implements Serializable {
  private int a;
  
  private double b;
  
  private Calendar c;
  
  public jsp() {}
  
  public jsp(int paramInt, double paramDouble, Calendar paramCalendar) {
    this.a = paramInt;
    this.b = paramDouble;
    this.c = paramCalendar;
  }
  
  public int a() {
    return this.a;
  }
  
  public void a(double paramDouble) {
    this.b = paramDouble;
  }
  
  public void a(int paramInt) {
    this.a = paramInt;
  }
  
  public void a(Calendar paramCalendar) {
    this.c = paramCalendar;
  }
  
  public double b() {
    return this.b;
  }
  
  public Calendar c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jsp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */