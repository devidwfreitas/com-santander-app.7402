import java.util.ArrayList;

public class fvq extends fvu {
  private ArrayList<fvp> a = new ArrayList<fvp>();
  
  private ArrayList<fvp> b = new ArrayList<fvp>();
  
  private String c;
  
  public ArrayList<fvp> a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public void a(ArrayList<fvp> paramArrayList) {
    this.a = paramArrayList;
  }
  
  public ArrayList<fvp> b() {
    return this.b;
  }
  
  public void b(ArrayList<fvp> paramArrayList) {
    this.b = paramArrayList;
  }
  
  public ArrayList<fvp> c() {
    ArrayList<fvp> arrayList = new ArrayList();
    arrayList.addAll(this.a);
    arrayList.addAll(this.b);
    return arrayList;
  }
  
  public String d() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fvq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */