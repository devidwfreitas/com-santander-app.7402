import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;

public class zp extends acr {
  private yz a = new yz();
  
  private FragmentManager c;
  
  private View d;
  
  private Fragment e;
  
  private ys f;
  
  private String g;
  
  public zp(ack paramack, FragmentManager paramFragmentManager) {
    super(paramack);
    this.c = paramFragmentManager;
    this.d = e().findViewById(la.validation_loading);
    this.d.setVisibility(0);
    this.e = paramFragmentManager.findFragmentById(la.validacao_layout_content);
    if (aca.a().g().booleanValue()) {
      b();
      return;
    } 
    a();
  }
  
  private void a() {
    boolean bool;
    if (!((acg)e().a()).w().isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    this.a.a(e().getApplicationContext(), Boolean.valueOf(bool), new zq(this));
  }
  
  private void a(Boolean paramBoolean) {
    if (this.e == null) {
      zd zd;
      if (paramBoolean.booleanValue()) {
        ze ze = new ze(e(), this.g);
      } else {
        zd = new zd(e(), this.f);
      } 
      FragmentTransaction fragmentTransaction = this.c.beginTransaction();
      fragmentTransaction.add(la.validacao_layout_content, zd);
      fragmentTransaction.commit();
      this.d.setVisibility(8);
    } 
  }
  
  private void b() {
    if (this.e == null) {
      ze ze = new ze(e(), null);
      FragmentTransaction fragmentTransaction = this.c.beginTransaction();
      fragmentTransaction.add(la.validacao_layout_content, ze);
      fragmentTransaction.commit();
      this.d.setVisibility(8);
    } 
  }
  
  private void c() {
    aad.a((Context)e(), new zr(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\zp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */