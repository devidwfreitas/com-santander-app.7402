import android.view.View;
import android.widget.AdapterView;

public class idi implements icj, idh {
  private ics a;
  
  private ibo b;
  
  private icb c;
  
  private hzt d;
  
  private ibp e;
  
  public idi(ics paramics) {
    this.a = paramics;
    this.c = new icc(this);
    this.c.a(paramics.a());
    this.c.a();
  }
  
  public void a(View paramView) {}
  
  public void a(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    this.e = (ibp)paramAdapterView.getAdapter().getItem(paramInt);
    ibm.a(this.e, this.b);
    this.a.a(this.b, this.e);
  }
  
  public void a(ibo paramibo) {
    this.b = paramibo;
    this.a.a(paramibo);
    this.a.b(paramibo);
  }
  
  public void a(boolean paramBoolean, hzt paramhzt) {
    this.d = paramhzt;
    if (paramBoolean && !this.a.a().a().equals("9")) {
      this.a.c(this.b);
      return;
    } 
    this.a.b();
  }
  
  public void b(View paramView) {}
  
  public void c(View paramView) {
    ibm.a(this.b);
    this.a.a(this.d, this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\idi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */