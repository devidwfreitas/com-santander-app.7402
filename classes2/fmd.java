import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.RendaFixaAplicacaoActivity;

public class fmd extends AsyncTask<Void, Void, ftd> {
  private int b = -1;
  
  private boolean c = false;
  
  private fmd(RendaFixaAplicacaoActivity paramRendaFixaAplicacaoActivity) {}
  
  protected ftd a(Void... paramVarArgs) {
    try {
      if (RendaFixaAplicacaoActivity.a(this.a) != null && RendaFixaAplicacaoActivity.a(this.a).size() > this.b && RendaFixaAplicacaoActivity.a(this.a).indexOf(RendaFixaAplicacaoActivity.e(this.a)) != -1 && !this.c) {
        if (RendaFixaAplicacaoActivity.a(this.a).get(this.b) != null && ((ftq)RendaFixaAplicacaoActivity.a(this.a).get(this.b)).c() != null)
          return ((ftq)RendaFixaAplicacaoActivity.a(this.a).get(this.b)).c(); 
        String str = ((ftq)RendaFixaAplicacaoActivity.a(this.a).get(this.b)).a();
        return hat.j().a(str);
      } 
    } catch (Exception exception) {
      Log.e("ERROR", exception.getMessage());
    } 
    return null;
  }
  
  public void a(int paramInt) {
    this.b = paramInt;
  }
  
  protected void a(ftd paramftd) {
    RendaFixaAplicacaoActivity.f(this.a);
    if (!this.c) {
      if (paramftd == null) {
        if (RendaFixaAplicacaoActivity.g(this.a) != null && RendaFixaAplicacaoActivity.g(this.a).isShowing()) {
          RendaFixaAplicacaoActivity.g(this.a).cancel();
          RendaFixaAplicacaoActivity.a(this.a, null);
        } 
      } else if (paramftd.hasError()) {
        if (RendaFixaAplicacaoActivity.g(this.a) != null && RendaFixaAplicacaoActivity.g(this.a).isShowing()) {
          RendaFixaAplicacaoActivity.g(this.a).cancel();
          RendaFixaAplicacaoActivity.a(this.a, null);
        } 
        hat.d().a((Activity)RendaFixaAplicacaoActivity.c(this.a), (fvu)paramftd, false);
      } else {
        ((ftq)RendaFixaAplicacaoActivity.a(this.a).get(this.b)).a(paramftd);
        if (RendaFixaAplicacaoActivity.b(this.a) == 0) {
          RendaFixaAplicacaoActivity.h(this.a);
          if (RendaFixaAplicacaoActivity.g(this.a) != null && RendaFixaAplicacaoActivity.g(this.a).isShowing()) {
            RendaFixaAplicacaoActivity.g(this.a).cancel();
            RendaFixaAplicacaoActivity.a(this.a, null);
          } 
        } 
      } 
    } else {
      RendaFixaAplicacaoActivity.a(this.a, true);
      hat.d().a((Activity)RendaFixaAplicacaoActivity.c(this.a), (fvu)paramftd, true);
    } 
    if (RendaFixaAplicacaoActivity.b(this.a) == 0 && RendaFixaAplicacaoActivity.i(this.a)) {
      if (RendaFixaAplicacaoActivity.g(this.a) != null && RendaFixaAplicacaoActivity.g(this.a).isShowing()) {
        RendaFixaAplicacaoActivity.g(this.a).cancel();
        RendaFixaAplicacaoActivity.a(this.a, null);
      } 
      RendaFixaAplicacaoActivity.c(this.a).finish();
    } 
  }
  
  public void onPreExecute() {
    if (RendaFixaAplicacaoActivity.a(this.a) != null && RendaFixaAplicacaoActivity.a(this.a).size() > this.b) {
      if (RendaFixaAplicacaoActivity.b(this.a) == 0)
        RendaFixaAplicacaoActivity.a(this.a, mxn.b((Activity)RendaFixaAplicacaoActivity.c(this.a))); 
      RendaFixaAplicacaoActivity.d(this.a);
      return;
    } 
    this.c = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */