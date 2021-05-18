import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.List;

public class che extends cgx<Entry> implements ciu {
  protected ckq k = new ckr();
  
  private float l = 15.0F;
  
  private float m = 0.0F;
  
  private int n = 1122867;
  
  public che(List<Entry> paramList, String paramString) {
    super(paramList, paramString);
  }
  
  public static ckq b(cfi paramcfi) {
    switch (chf.a[paramcfi.ordinal()]) {
      default:
        return null;
      case 1:
        return new ckr();
      case 2:
        return new cko();
      case 3:
        return new cks();
      case 4:
        return new ckp();
      case 5:
        return new ckt();
      case 6:
        return new ckn();
      case 7:
        break;
    } 
    return new ckm();
  }
  
  public cgq<Entry> a() {
    ArrayList<Entry> arrayList = new ArrayList();
    for (int i = 0; i < this.q.size(); i++)
      arrayList.add(((Entry)this.q.get(i)).i()); 
    che che1 = new che(arrayList, p());
    che1.h = this.h;
    che1.c = this.c;
    che1.b = this.b;
    che1.l = this.l;
    che1.k = this.k;
    che1.m = this.m;
    che1.n = this.n;
    che1.x = this.x;
    che1.a = this.a;
    che1.y = this.y;
    return che1;
  }
  
  public void a(float paramFloat) {
    this.l = paramFloat;
  }
  
  public void a(int paramInt) {
    this.n = paramInt;
  }
  
  public void a(cfi paramcfi) {
    this.k = b(paramcfi);
  }
  
  public void a(ckq paramckq) {
    this.k = paramckq;
  }
  
  public float b() {
    return this.l;
  }
  
  public ckq c() {
    return this.k;
  }
  
  public float d() {
    return this.m;
  }
  
  public int e() {
    return this.n;
  }
  
  public void f(float paramFloat) {
    this.m = paramFloat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\che.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */