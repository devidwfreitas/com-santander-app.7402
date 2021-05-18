import android.app.Dialog;
import android.os.AsyncTask;
import com.santander.app.faturas.activity.FaturasActivity;

public class iem extends AsyncTask<Void, Void, fue> {
  public Dialog a = null;
  
  public iem(FaturasActivity paramFaturasActivity) {}
  
  protected fue a(Void... paramVarArgs) {
    fue fue2 = FaturasActivity.f(this.b).h();
    fue fue1 = fue2;
    if (fue2 == null)
      fue1 = hat.i().a(FaturasActivity.f(this.b)); 
    return fue1;
  }
  
  protected void a(fue paramfue) {
    if (this.a != null && this.a.isShowing()) {
      this.a.cancel();
      this.a = null;
    } 
    if (paramfue != null && !paramfue.hasError()) {
      if (paramfue.e().size() > 0) {
        FaturasActivity.f(this.b).a(paramfue);
        FaturasActivity.a(this.b, paramfue);
        FaturasActivity.b(this.b, paramfue);
        FaturasActivity.h(this.b).setVisibility(8);
        return;
      } 
      if (paramfue.j() != null && paramfue.j().length() > 0) {
        FaturasActivity.a(this.b, paramfue);
        FaturasActivity.i(this.b).setText(paramfue.j());
        FaturasActivity.j(this.b).setVisibility(4);
        FaturasActivity.k(this.b).setVisibility(8);
        FaturasActivity.h(this.b).setVisibility(0);
        if (paramfue.j().contains("Cliente sem fatura")) {
          if (FaturasActivity.l(this.b) != null) {
            FaturasActivity.l(this.b).dismiss();
            FaturasActivity.a(this.b, null);
          } 
          FaturasActivity.a(this.b, mxn.d(this.b.i, this.b.getResources().getString(2131296844)));
          return;
        } 
        mxn.a(this.b.i, paramfue.j());
        return;
      } 
      FaturasActivity.a(this.b, paramfue);
      FaturasActivity.i(this.b).setText(paramfue.j());
      FaturasActivity.j(this.b).setVisibility(4);
      FaturasActivity.k(this.b).setVisibility(8);
      FaturasActivity.h(this.b).setVisibility(0);
      if (FaturasActivity.l(this.b) != null) {
        FaturasActivity.l(this.b).dismiss();
        FaturasActivity.a(this.b, null);
      } 
      FaturasActivity.a(this.b, mxn.d(this.b.i, this.b.getResources().getString(2131296844)));
      return;
    } 
    hat.d().a(this.b.i, paramfue, true, false);
  }
  
  public void onPreExecute() {
    this.a = mxn.b(this.b.i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */