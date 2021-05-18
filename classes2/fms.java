import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.RendaFixaResgateActivity;
import java.util.Vector;

public class fms extends AsyncTask<Void, Void, ftf> {
  private int b = -1;
  
  private boolean c = false;
  
  private fms(RendaFixaResgateActivity paramRendaFixaResgateActivity) {}
  
  protected ftf a(Void... paramVarArgs) {
    try {
      if (RendaFixaResgateActivity.k(this.a).a() != null && RendaFixaResgateActivity.k(this.a).a().size() > this.b && RendaFixaResgateActivity.k(this.a).a().indexOf(RendaFixaResgateActivity.l(this.a)) != -1 && !this.c) {
        Vector<ftk> vector = RendaFixaResgateActivity.k(this.a).a();
        return (((ftk)vector.get(this.b)).d() != null) ? ((ftk)vector.get(this.b)).d() : hat.j().a(vector.get(this.b));
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
    } 
    return null;
  }
  
  public void a(int paramInt) {
    this.b = paramInt;
  }
  
  protected void a(ftf paramftf) {
    RendaFixaResgateActivity.m(this.a);
    if (!this.c) {
      if (paramftf == null) {
        if (RendaFixaResgateActivity.n(this.a) != null && RendaFixaResgateActivity.n(this.a).isShowing()) {
          RendaFixaResgateActivity.n(this.a).cancel();
          RendaFixaResgateActivity.a(this.a, null);
        } 
        hat.d().a((Activity)RendaFixaResgateActivity.h(this.a), paramftf, true, true);
      } else if (paramftf.hasError()) {
        if (RendaFixaResgateActivity.n(this.a) != null && RendaFixaResgateActivity.n(this.a).isShowing()) {
          RendaFixaResgateActivity.n(this.a).cancel();
          RendaFixaResgateActivity.a(this.a, null);
        } 
        hat.d().a((Activity)RendaFixaResgateActivity.h(this.a), paramftf, true, true);
      } else {
        ((ftk)RendaFixaResgateActivity.k(this.a).a().get(this.b)).a(paramftf);
        if (RendaFixaResgateActivity.i(this.a) == 0) {
          RendaFixaResgateActivity.o(this.a);
          RendaFixaResgateActivity.p(this.a);
          if (RendaFixaResgateActivity.n(this.a) != null && RendaFixaResgateActivity.n(this.a).isShowing()) {
            RendaFixaResgateActivity.n(this.a).cancel();
            RendaFixaResgateActivity.a(this.a, null);
          } 
        } 
      } 
    } else {
      RendaFixaResgateActivity.a(this.a, true);
      hat.d().a((Activity)RendaFixaResgateActivity.h(this.a), paramftf, true);
    } 
    if (RendaFixaResgateActivity.i(this.a) == 0 && RendaFixaResgateActivity.q(this.a)) {
      if (RendaFixaResgateActivity.n(this.a) != null && RendaFixaResgateActivity.n(this.a).isShowing()) {
        RendaFixaResgateActivity.n(this.a).cancel();
        RendaFixaResgateActivity.a(this.a, null);
      } 
      RendaFixaResgateActivity.h(this.a).finish();
    } 
  }
  
  public void onPreExecute() {
    if (RendaFixaResgateActivity.i(this.a) == 0)
      RendaFixaResgateActivity.a(this.a, mxn.b((Activity)RendaFixaResgateActivity.h(this.a))); 
    RendaFixaResgateActivity.j(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fms.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */