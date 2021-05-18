import android.content.Context;
import android.support.v4.app.Fragment;
import android.view.View;
import com.santander.app.emprestimo.cancelamento.presentation.ComprovanteCancelarEmprestimo;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;

public abstract class hmc extends grs implements nau {
  public void a() {
    View view = findViewById(2131755593);
    if (view == null)
      return; 
    view.setVisibility(8);
  }
  
  public void a(hxl paramhxl) {
    hnj.i();
    hys.a((Context)this, getString(2131298985), getString(2131298140), getString(2131299303), getString(2131298257), new hmd(this, paramhxl));
  }
  
  public void b(hxl paramhxl) {
    boolean bool;
    View view = findViewById(2131755593);
    if (view == null)
      return; 
    miq miq = miq.C();
    if (paramhxl.a() == 11) {
      bool = true;
    } else {
      bool = false;
    } 
    miq.f(bool);
    ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
    validacionOperacionFragment.b(1);
    getSupportFragmentManager().beginTransaction().add(2131755593, (Fragment)validacionOperacionFragment).setTransition(4097).commit();
    view.setVisibility(0);
  }
  
  public void c(hxl paramhxl) {
    ComprovanteCancelarEmprestimo.a((Context)this, paramhxl);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hmc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */