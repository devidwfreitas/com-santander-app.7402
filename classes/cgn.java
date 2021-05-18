import android.graphics.Paint;
import com.github.mikephil.charting.data.CandleEntry;
import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.List;

public class cgn extends cgx<CandleEntry> implements cin {
  private boolean A = true;
  
  private float B = 0.1F;
  
  private boolean C = false;
  
  protected Paint.Style k = Paint.Style.STROKE;
  
  protected Paint.Style l = Paint.Style.FILL;
  
  protected int m = 1122868;
  
  protected int n = 1122868;
  
  protected int o = 1122868;
  
  protected int p = 1122868;
  
  private float z = 3.0F;
  
  public cgn(List<CandleEntry> paramList, String paramString) {
    super(paramList, paramString);
  }
  
  public int F() {
    return this.p;
  }
  
  public boolean G() {
    return this.C;
  }
  
  public cgq<CandleEntry> a() {
    ArrayList<CandleEntry> arrayList = new ArrayList();
    arrayList.clear();
    for (int i = 0; i < this.q.size(); i++)
      arrayList.add(((CandleEntry)this.q.get(i)).d()); 
    cgn cgn1 = new cgn(arrayList, p());
    cgn1.b = this.b;
    cgn1.z = this.z;
    cgn1.A = this.A;
    cgn1.B = this.B;
    cgn1.a = this.a;
    cgn1.k = this.k;
    cgn1.l = this.l;
    cgn1.p = this.p;
    return cgn1;
  }
  
  public void a(float paramFloat) {
    float f1 = 0.45F;
    float f2 = 0.0F;
    if (paramFloat < 0.0F)
      paramFloat = f2; 
    if (paramFloat > 0.45F)
      paramFloat = f1; 
    this.B = paramFloat;
  }
  
  public void a(int paramInt) {
    this.m = paramInt;
  }
  
  public void a(Paint.Style paramStyle) {
    this.k = paramStyle;
  }
  
  protected void a(CandleEntry paramCandleEntry) {
    if (paramCandleEntry.f() < this.s)
      this.s = paramCandleEntry.f(); 
    if (paramCandleEntry.e() > this.r)
      this.r = paramCandleEntry.e(); 
    d(paramCandleEntry);
  }
  
  public float b() {
    return this.B;
  }
  
  public void b(int paramInt) {
    this.n = paramInt;
  }
  
  public void b(Paint.Style paramStyle) {
    this.l = paramStyle;
  }
  
  protected void b(CandleEntry paramCandleEntry) {
    if (paramCandleEntry.e() < this.s)
      this.s = paramCandleEntry.e(); 
    if (paramCandleEntry.e() > this.r)
      this.r = paramCandleEntry.e(); 
    if (paramCandleEntry.f() < this.s)
      this.s = paramCandleEntry.f(); 
    if (paramCandleEntry.f() > this.r)
      this.r = paramCandleEntry.f(); 
  }
  
  public float c() {
    return this.z;
  }
  
  public void c(int paramInt) {
    this.o = paramInt;
  }
  
  public void d(boolean paramBoolean) {
    this.A = paramBoolean;
  }
  
  public boolean d() {
    return this.A;
  }
  
  public int e() {
    return this.m;
  }
  
  public void e(boolean paramBoolean) {
    this.C = paramBoolean;
  }
  
  public int f() {
    return this.n;
  }
  
  public void f(float paramFloat) {
    this.z = clg.a(paramFloat);
  }
  
  public int g() {
    return this.o;
  }
  
  public Paint.Style h() {
    return this.k;
  }
  
  public Paint.Style i() {
    return this.l;
  }
  
  public void l(int paramInt) {
    this.p = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */