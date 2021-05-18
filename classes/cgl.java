import com.github.mikephil.charting.data.BubbleEntry;
import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.List;

public class cgl extends cgh<BubbleEntry> implements cim {
  protected float k;
  
  protected boolean l = true;
  
  private float m = 2.5F;
  
  public cgl(List<BubbleEntry> paramList, String paramString) {
    super(paramList, paramString);
  }
  
  public cgq<BubbleEntry> a() {
    ArrayList<BubbleEntry> arrayList = new ArrayList();
    for (int i = 0; i < this.q.size(); i++)
      arrayList.add(((BubbleEntry)this.q.get(i)).a()); 
    cgl cgl1 = new cgl(arrayList, p());
    cgl1.b = this.b;
    cgl1.a = this.a;
    return cgl1;
  }
  
  public void a(float paramFloat) {
    this.m = clg.a(paramFloat);
  }
  
  protected void a(BubbleEntry paramBubbleEntry) {
    super.a(paramBubbleEntry);
    float f = paramBubbleEntry.b();
    if (f > this.k)
      this.k = f; 
  }
  
  public float b() {
    return this.m;
  }
  
  public float c() {
    return this.k;
  }
  
  public void d(boolean paramBoolean) {
    this.l = paramBoolean;
  }
  
  public boolean d() {
    return this.l;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */