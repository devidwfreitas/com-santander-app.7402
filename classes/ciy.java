import android.view.View;

public class ciy extends ciz {
  private static clc<ciy> a = clc.a(2, new ciy(null, 0.0F, 0.0F, null, null));
  
  static {
    a.a(0.5F);
  }
  
  public ciy(clh paramclh, float paramFloat1, float paramFloat2, cle paramcle, View paramView) {
    super(paramclh, paramFloat1, paramFloat2, paramcle, paramView);
  }
  
  public static ciy a(clh paramclh, float paramFloat1, float paramFloat2, cle paramcle, View paramView) {
    ciy ciy1 = a.c();
    ciy1.m = paramclh;
    ciy1.n = paramFloat1;
    ciy1.o = paramFloat2;
    ciy1.p = paramcle;
    ciy1.q = paramView;
    return ciy1;
  }
  
  public static void a(ciy paramciy) {
    a.a(paramciy);
  }
  
  protected cld b() {
    return new ciy(this.m, this.n, this.o, this.p, this.q);
  }
  
  public void run() {
    this.l[0] = this.n;
    this.l[1] = this.o;
    this.p.a(this.l);
    this.m.a(this.l, this.q);
    a(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ciy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */