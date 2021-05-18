import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class hvn implements hvk {
  private static hvk a;
  
  private hwo b = new hwu();
  
  private hus c;
  
  public static hvk e() {
    hvn hvn1 = new hvn();
    a = hvn1;
    return hvn1;
  }
  
  public static hvk f() {
    if (a == null)
      e(); 
    return a;
  }
  
  public List<String> a() {
    int i = this.c.c();
    int j = this.c.b();
    ArrayList<String> arrayList = new ArrayList();
    while (i <= j) {
      arrayList.add(String.valueOf(i));
      i++;
    } 
    Collections.reverse(arrayList);
    return arrayList;
  }
  
  public void a(int paramInt1, int paramInt2, hvl paramhvl) {
    this.b.a(paramInt1, paramInt2, this.c, new hvq(this, paramInt1, paramInt2, paramhvl));
  }
  
  public void a(hvm paramhvm) {
    this.b.a(new hvo(this, paramhvm));
  }
  
  public List<String> b() {
    ArrayList<String> arrayList = new ArrayList();
    for (int i = 1; i <= 30; i++)
      arrayList.add(String.valueOf(i)); 
    return arrayList;
  }
  
  public hxn c() {
    return (hxn)this.c;
  }
  
  public hus d() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hvn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */