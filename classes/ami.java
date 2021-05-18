import android.view.ViewGroup;
import android.widget.ImageView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;

public class ami implements amh {
  private Object b;
  
  private Object c;
  
  private boolean d;
  
  public ami(SantanderDropDownView paramSantanderDropDownView) {}
  
  private void j() {
    byte b;
    ImageView imageView = SantanderDropDownView.f(this.a);
    if (f()) {
      b = 0;
    } else {
      b = 4;
    } 
    imageView.setVisibility(b);
  }
  
  public void a() {
    d();
    if (SantanderDropDownView.a(this.a) == null || amr.a(SantanderDropDownView.a(this.a)).isEmpty()) {
      g();
    } else {
      a(0);
    } 
    j();
  }
  
  public void a(int paramInt) {
    SantanderDropDownView.b(this.a).removeAllViews();
    this.b = this.c;
    this.c = SantanderDropDownView.a(this.a).a(paramInt);
    h();
    amu amu = amr.a(SantanderDropDownView.a(this.a), (ViewGroup)this.a, paramInt);
    SantanderDropDownView.b(this.a).addView(amu.itemView);
    amr.b(SantanderDropDownView.a(this.a));
    j();
  }
  
  public Object b() {
    return this.b;
  }
  
  public void b(int paramInt) {
    SantanderDropDownView.c(this.a);
    a(paramInt);
  }
  
  public Object c() {
    return this.c;
  }
  
  public void d() {
    if (SantanderDropDownView.d(this.a))
      SantanderDropDownView.c(this.a); 
  }
  
  public void e() {
    if (!SantanderDropDownView.d(this.a))
      SantanderDropDownView.c(this.a); 
  }
  
  public boolean f() {
    return (SantanderDropDownView.a(this.a) != null && !amr.c(SantanderDropDownView.a(this.a)).isEmpty());
  }
  
  public void g() {
    this.c = null;
    SantanderDropDownView.b(this.a).removeAllViews();
  }
  
  public void h() {
    if (SantanderDropDownView.e(this.a) != null && !this.d)
      try {
        SantanderDropDownView.e(this.a).a(this.a, this.c);
        this.d = false;
        return;
      } catch (ClassCastException classCastException) {
        throw new ClassCastException("Invalid class in in OnItemSelectedListener - " + classCastException.getMessage());
      }  
    this.d = false;
  }
  
  public void i() {
    this.d = true;
    SantanderDropDownView.a(this.a).notifyDataSetChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ami.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */