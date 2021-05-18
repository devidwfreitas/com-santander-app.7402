import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.PieEntry;
import java.util.ArrayList;
import java.util.List;

public class cgz extends cgq<PieEntry> implements cis {
  private float a = 0.0F;
  
  private boolean k;
  
  private float l = 18.0F;
  
  private cha m = cha.INSIDE_SLICE;
  
  private cha n = cha.INSIDE_SLICE;
  
  private int o = -16777216;
  
  private float p = 1.0F;
  
  private float v = 75.0F;
  
  private float w = 0.3F;
  
  private float x = 0.4F;
  
  private boolean y = true;
  
  public cgz(List<PieEntry> paramList, String paramString) {
    super(paramList, paramString);
  }
  
  public float F() {
    return this.x;
  }
  
  public boolean G() {
    return this.y;
  }
  
  public cgq<PieEntry> a() {
    ArrayList<PieEntry> arrayList = new ArrayList();
    for (int i = 0; i < this.q.size(); i++)
      arrayList.add(((PieEntry)this.q.get(i)).d()); 
    cgz cgz1 = new cgz(arrayList, p());
    cgz1.b = this.b;
    cgz1.a = this.a;
    cgz1.l = this.l;
    return cgz1;
  }
  
  public void a(float paramFloat) {
    float f2 = 20.0F;
    float f1 = 0.0F;
    if (paramFloat > 20.0F)
      paramFloat = f2; 
    if (paramFloat < 0.0F)
      paramFloat = f1; 
    this.a = clg.a(paramFloat);
  }
  
  public void a(int paramInt) {
    this.o = paramInt;
  }
  
  public void a(cha paramcha) {
    this.m = paramcha;
  }
  
  protected void a(PieEntry paramPieEntry) {
    if (paramPieEntry == null)
      return; 
    c(paramPieEntry);
  }
  
  public float b() {
    return this.a;
  }
  
  public void b(cha paramcha) {
    this.n = paramcha;
  }
  
  public boolean c() {
    return this.k;
  }
  
  public float d() {
    return this.l;
  }
  
  public void d(boolean paramBoolean) {
    this.k = paramBoolean;
  }
  
  public cha e() {
    return this.m;
  }
  
  public void e(boolean paramBoolean) {
    this.y = paramBoolean;
  }
  
  public cha f() {
    return this.n;
  }
  
  public void f(float paramFloat) {
    this.l = clg.a(paramFloat);
  }
  
  public int g() {
    return this.o;
  }
  
  public float h() {
    return this.p;
  }
  
  public void h(float paramFloat) {
    this.p = paramFloat;
  }
  
  public float i() {
    return this.v;
  }
  
  public void i(float paramFloat) {
    this.v = paramFloat;
  }
  
  public float j() {
    return this.w;
  }
  
  public void j(float paramFloat) {
    this.w = paramFloat;
  }
  
  public void k(float paramFloat) {
    this.x = paramFloat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */