import android.app.Dialog;
import android.os.AsyncTask;
import com.santander.app.faturas.activity.FaturasActivity;

public class ien extends AsyncTask<Void, Void, fue> {
  private int b = 0;
  
  private boolean c = false;
  
  private fue d;
  
  private Dialog e;
  
  public ien(FaturasActivity paramFaturasActivity, fue paramfue, int paramInt) {
    this.d = paramfue;
    this.b = paramInt;
  }
  
  protected fue a(Void... paramVarArgs) {
    try {
      return hat.i().a(FaturasActivity.f(this.a), this.d.g(), this.d.f());
    } catch (Exception exception) {
      return null;
    } 
  }
  
  protected void a(fue paramfue) {
    if (this.e != null && this.e.isShowing()) {
      this.e.cancel();
      this.e = null;
    } 
    if (paramfue != null && !paramfue.hasError()) {
      if (paramfue.e().size() > 0) {
        FaturasActivity.c(this.a, paramfue);
        FaturasActivity.d(this.a, paramfue);
        FaturasActivity.h(this.a).setVisibility(8);
        FaturasActivity.j(this.a).setVisibility(8);
        return;
      } 
      if (paramfue.j() != null && paramfue.j().length() > 0) {
        FaturasActivity.a(this.a, paramfue);
        FaturasActivity.i(this.a).setText(paramfue.k());
        FaturasActivity.j(this.a).setVisibility(8);
        FaturasActivity.k(this.a).setVisibility(8);
        FaturasActivity.h(this.a).setVisibility(0);
        mxn.b(this.a.i, paramfue.k());
        return;
      } 
      FaturasActivity.a(this.a, paramfue);
      FaturasActivity.i(this.a).setText(paramfue.k());
      FaturasActivity.j(this.a).setVisibility(8);
      FaturasActivity.k(this.a).setVisibility(8);
      FaturasActivity.h(this.a).setVisibility(0);
      if (FaturasActivity.l(this.a) != null) {
        FaturasActivity.l(this.a).dismiss();
        FaturasActivity.a(this.a, null);
      } 
      FaturasActivity.a(this.a, mxn.d(this.a.i, this.a.getResources().getString(2131296844)));
      return;
    } 
    hat.d().a(this.a.i, paramfue, true, false);
  }
  
  public void onPreExecute() {
    this.e = mxn.b(this.a.i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ien.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */