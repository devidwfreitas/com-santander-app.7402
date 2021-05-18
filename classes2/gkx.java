import java.io.Serializable;
import java.util.ArrayList;

public class gkx implements Serializable {
  private String a;
  
  private int b;
  
  private ArrayList<gky> c;
  
  public String a() {
    return this.a;
  }
  
  public void a(int paramInt) {
    this.b = paramInt;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(ArrayList<gky> paramArrayList) {
    this.c = paramArrayList;
  }
  
  public int b() {
    return this.b;
  }
  
  public ArrayList<gky> c() {
    return this.c;
  }
  
  public boolean equals(Object paramObject) {
    return this.a.equals(((gkx)paramObject).a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gkx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */