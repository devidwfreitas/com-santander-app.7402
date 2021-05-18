import android.graphics.Color;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.List;

public class cgf extends cgh<BarEntry> implements cik {
  private int k = 1;
  
  private int l = Color.rgb(215, 215, 215);
  
  private float m = 0.0F;
  
  private int n = -16777216;
  
  private int o = 120;
  
  private int p = 0;
  
  private String[] v = new String[] { "Stack" };
  
  public cgf(List<BarEntry> paramList, String paramString) {
    super(paramList, paramString);
    e(paramList);
    d(paramList);
  }
  
  private void d(List<BarEntry> paramList) {
    this.p = 0;
    for (int i = 0; i < paramList.size(); i++) {
      float[] arrayOfFloat = ((BarEntry)paramList.get(i)).b();
      if (arrayOfFloat == null) {
        this.p++;
      } else {
        int j = this.p;
        this.p = arrayOfFloat.length + j;
      } 
    } 
  }
  
  private void e(List<BarEntry> paramList) {
    for (int i = 0; i < paramList.size(); i++) {
      float[] arrayOfFloat = ((BarEntry)paramList.get(i)).b();
      if (arrayOfFloat != null && arrayOfFloat.length > this.k)
        this.k = arrayOfFloat.length; 
    } 
  }
  
  public cgq<BarEntry> a() {
    ArrayList<BarEntry> arrayList = new ArrayList();
    arrayList.clear();
    for (int i = 0; i < this.q.size(); i++)
      arrayList.add(((BarEntry)this.q.get(i)).a()); 
    cgf cgf1 = new cgf(arrayList, p());
    cgf1.b = this.b;
    cgf1.k = this.k;
    cgf1.l = this.l;
    cgf1.v = this.v;
    cgf1.a = this.a;
    cgf1.o = this.o;
    return cgf1;
  }
  
  public void a(float paramFloat) {
    this.m = paramFloat;
  }
  
  public void a(int paramInt) {
    this.l = paramInt;
  }
  
  protected void a(BarEntry paramBarEntry) {
    if (paramBarEntry != null && !Float.isNaN(paramBarEntry.c())) {
      if (paramBarEntry.b() == null) {
        if (paramBarEntry.c() < this.s)
          this.s = paramBarEntry.c(); 
        if (paramBarEntry.c() > this.r)
          this.r = paramBarEntry.c(); 
      } else {
        if (-paramBarEntry.g() < this.s)
          this.s = -paramBarEntry.g(); 
        if (paramBarEntry.f() > this.r)
          this.r = paramBarEntry.f(); 
      } 
      d(paramBarEntry);
    } 
  }
  
  public void a(String[] paramArrayOfString) {
    this.v = paramArrayOfString;
  }
  
  public int b() {
    return this.k;
  }
  
  public void b(int paramInt) {
    this.n = paramInt;
  }
  
  public void c(int paramInt) {
    this.o = paramInt;
  }
  
  public boolean c() {
    return (this.k > 1);
  }
  
  public int d() {
    return this.p;
  }
  
  public int e() {
    return this.l;
  }
  
  public float f() {
    return this.m;
  }
  
  public int g() {
    return this.n;
  }
  
  public int h() {
    return this.o;
  }
  
  public String[] i() {
    return this.v;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */