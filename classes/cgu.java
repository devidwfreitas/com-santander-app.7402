import android.content.Context;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.util.Log;
import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.List;

public class cgu extends cgw<Entry> implements cip {
  private DashPathEffect A = null;
  
  private chm B = new chj();
  
  private boolean C = true;
  
  private boolean D = true;
  
  private cgv l = cgv.LINEAR;
  
  private List<Integer> m = null;
  
  private int n = -1;
  
  private float o = 8.0F;
  
  private float p = 4.0F;
  
  private float z = 0.2F;
  
  public cgu(List<Entry> paramList, String paramString) {
    super(paramList, paramString);
    if (this.m == null)
      this.m = new ArrayList<Integer>(); 
    this.m.clear();
    this.m.add(Integer.valueOf(Color.rgb(140, 234, 255)));
  }
  
  public boolean F() {
    return this.C;
  }
  
  @Deprecated
  public boolean G() {
    return (this.l == cgv.CUBIC_BEZIER);
  }
  
  @Deprecated
  public boolean Q() {
    return (this.l == cgv.STEPPED);
  }
  
  public List<Integer> R() {
    return this.m;
  }
  
  public int S() {
    return this.m.size();
  }
  
  public void T() {
    if (this.m == null)
      this.m = new ArrayList<Integer>(); 
    this.m.clear();
  }
  
  public int U() {
    return this.n;
  }
  
  public boolean V() {
    return this.D;
  }
  
  public chm W() {
    return this.B;
  }
  
  public int a(int paramInt) {
    return ((Integer)this.m.get(paramInt)).intValue();
  }
  
  public cgq<Entry> a() {
    ArrayList<Entry> arrayList = new ArrayList();
    for (int i = 0; i < this.q.size(); i++)
      arrayList.add(((Entry)this.q.get(i)).i()); 
    cgu cgu1 = new cgu(arrayList, p());
    cgu1.l = this.l;
    cgu1.b = this.b;
    cgu1.o = this.o;
    cgu1.p = this.p;
    cgu1.m = this.m;
    cgu1.A = this.A;
    cgu1.C = this.C;
    cgu1.D = this.D;
    cgu1.a = this.a;
    return cgu1;
  }
  
  public void a(float paramFloat) {
    float f2 = 1.0F;
    float f1 = 0.05F;
    if (paramFloat > 1.0F)
      paramFloat = f2; 
    if (paramFloat < 0.05F)
      paramFloat = f1; 
    this.z = paramFloat;
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3) {
    this.A = new DashPathEffect(new float[] { paramFloat1, paramFloat2 }, paramFloat3);
  }
  
  public void a(cgv paramcgv) {
    this.l = paramcgv;
  }
  
  public void a(chm paramchm) {
    if (paramchm == null) {
      this.B = new chj();
      return;
    } 
    this.B = paramchm;
  }
  
  public cgv b() {
    return this.l;
  }
  
  public void b(int paramInt) {
    T();
    this.m.add(Integer.valueOf(paramInt));
  }
  
  public void b(int... paramVarArgs) {
    this.m = cku.a(paramVarArgs);
  }
  
  public void b(int[] paramArrayOfint, Context paramContext) {
    List<Integer> list2 = this.m;
    List<Integer> list1 = list2;
    if (list2 == null)
      list1 = new ArrayList<Integer>(); 
    list1.clear();
    int j = paramArrayOfint.length;
    for (int i = 0; i < j; i++) {
      int k = paramArrayOfint[i];
      list1.add(Integer.valueOf(paramContext.getResources().getColor(k)));
    } 
    this.m = list1;
  }
  
  public float c() {
    return this.z;
  }
  
  public void c(int paramInt) {
    this.n = paramInt;
  }
  
  public float d() {
    return this.o;
  }
  
  public void d(List<Integer> paramList) {
    this.m = paramList;
  }
  
  public void d(boolean paramBoolean) {
    this.C = paramBoolean;
  }
  
  public float e() {
    return this.p;
  }
  
  public void e(boolean paramBoolean) {
    this.D = paramBoolean;
  }
  
  @Deprecated
  public float f() {
    return d();
  }
  
  public void f(float paramFloat) {
    if (paramFloat >= 1.0F) {
      this.o = clg.a(paramFloat);
      return;
    } 
    Log.e("LineDataSet", "Circle radius cannot be < 1");
  }
  
  public void g() {
    this.A = null;
  }
  
  public void h(float paramFloat) {
    if (paramFloat >= 0.5F) {
      this.p = clg.a(paramFloat);
      return;
    } 
    Log.e("LineDataSet", "Circle radius cannot be < 0.5");
  }
  
  public boolean h() {
    return (this.A != null);
  }
  
  public DashPathEffect i() {
    return this.A;
  }
  
  @Deprecated
  public void i(float paramFloat) {
    f(paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */