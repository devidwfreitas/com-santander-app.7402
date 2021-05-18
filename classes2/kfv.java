import android.widget.AdapterView;

public class kfv implements kec, kfu {
  private kdu a;
  
  private keq b;
  
  public kfv(keq paramkeq) {
    this.b = paramkeq;
    this.a = new kdv(this);
    paramkeq.b();
    this.a.a();
  }
  
  public void a(AdapterView<?> paramAdapterView, int paramInt) {
    kdh kdh = (kdh)paramAdapterView.getItemAtPosition(paramInt);
    kdg kdg = new kdg();
    kdg.f(kdh.f());
    kdg.e(kdh.a());
    kdg.g(kdh.g());
    kdg.h(kdh.h());
    kdg.c(kdh.b());
    kdg.d(kdh.c());
    kdg.a("0");
    this.b.a(kdg);
  }
  
  public void a(kcy paramkcy) {
    this.b.a(paramkcy);
    this.b.c();
  }
  
  public void b(kcy paramkcy) {
    this.b.c();
    this.b.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kfv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */