import com.github.mikephil.charting.data.RadarEntry;
import java.util.ArrayList;
import java.util.List;

public class chc extends cgw<RadarEntry> implements cit {
  protected float A = 2.0F;
  
  protected boolean l = false;
  
  protected int m = -1;
  
  protected int n = 1122867;
  
  protected int o = 76;
  
  protected float p = 3.0F;
  
  protected float z = 4.0F;
  
  public chc(List<RadarEntry> paramList, String paramString) {
    super(paramList, paramString);
  }
  
  public cgq<RadarEntry> a() {
    ArrayList<RadarEntry> arrayList = new ArrayList();
    for (int i = 0; i < this.q.size(); i++)
      arrayList.add(((RadarEntry)this.q.get(i)).b()); 
    chc chc1 = new chc(arrayList, p());
    chc1.b = this.b;
    chc1.a = this.a;
    return chc1;
  }
  
  public void a(float paramFloat) {
    this.p = paramFloat;
  }
  
  public void a(int paramInt) {
    this.m = paramInt;
  }
  
  public void b(int paramInt) {
    this.n = paramInt;
  }
  
  public boolean b() {
    return this.l;
  }
  
  public int c() {
    return this.m;
  }
  
  public void c(int paramInt) {
    this.o = paramInt;
  }
  
  public int d() {
    return this.n;
  }
  
  public void d(boolean paramBoolean) {
    this.l = paramBoolean;
  }
  
  public int e() {
    return this.o;
  }
  
  public float f() {
    return this.p;
  }
  
  public void f(float paramFloat) {
    this.z = paramFloat;
  }
  
  public float g() {
    return this.z;
  }
  
  public float h() {
    return this.A;
  }
  
  public void h(float paramFloat) {
    this.A = paramFloat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */