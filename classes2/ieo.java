import android.app.Dialog;
import android.os.AsyncTask;
import com.santander.app.faturas.activity.FaturasActivity;
import java.util.Calendar;

public class ieo extends AsyncTask<Void, Void, fue> {
  public Dialog a = null;
  
  private ieo(FaturasActivity paramFaturasActivity) {}
  
  protected fue a(Void... paramVarArgs) {
    try {
      fue fue2 = FaturasActivity.f(this.b).i();
      fue fue1 = fue2;
      if (fue2 == null)
        fue1 = hat.i().b(FaturasActivity.f(this.b)); 
      return fue1;
    } catch (Exception exception) {
      return null;
    } 
  }
  
  protected void a(fue paramfue) {
    if (this.a != null && this.a.isShowing()) {
      this.a.cancel();
      this.a = null;
    } 
    if (paramfue == null) {
      hat.d().a(this.b.i, paramfue, true, false);
    } else if (!paramfue.hasError()) {
      if (paramfue.e() != null && paramfue.e().size() > 0 && paramfue.c() != null) {
        FaturasActivity.f(this.b).b(paramfue);
        FaturasActivity.c(this.b, paramfue);
        FaturasActivity.d(this.b, paramfue);
        FaturasActivity.h(this.b).setVisibility(8);
        FaturasActivity.j(this.b).setVisibility(8);
      } else if (paramfue.k() != null && paramfue.k().length() > 0) {
        FaturasActivity.j(this.b).setVisibility(8);
        FaturasActivity.k(this.b).setVisibility(8);
        FaturasActivity.i(this.b).setText(paramfue.k());
        FaturasActivity.h(this.b).setVisibility(0);
        mxn.b(this.b.i, paramfue.k());
      } else if (paramfue.j() != null && paramfue.j().length() > 0) {
        FaturasActivity.j(this.b).setVisibility(8);
        FaturasActivity.k(this.b).setVisibility(8);
        FaturasActivity.i(this.b).setText(paramfue.j());
        FaturasActivity.h(this.b).setVisibility(0);
        if (paramfue.j().contains("Cliente sem fatura")) {
          if (FaturasActivity.l(this.b) != null) {
            FaturasActivity.l(this.b).dismiss();
            FaturasActivity.a(this.b, null);
          } 
          FaturasActivity.a(this.b, mxn.d(this.b.i, this.b.getResources().getString(2131296844)));
        } else {
          mxn.a(this.b.i, paramfue.j());
        } 
      } else {
        if (FaturasActivity.l(this.b) != null) {
          FaturasActivity.l(this.b).dismiss();
          FaturasActivity.a(this.b, null);
        } 
        FaturasActivity.a(this.b, mxn.d(this.b.i, this.b.getResources().getString(2131296844)));
      } 
    } else {
      FaturasActivity.f(this.b).b(new fue());
      hat.d().a(this.b.i, paramfue, true, false);
    } 
    if (FaturasActivity.m(this.b)) {
      if (FaturasActivity.d(this.b) != null && FaturasActivity.d(this.b).a() != null) {
        String str = FaturasActivity.d(this.b).a();
        int i = Integer.valueOf(str.substring(0, 4)).intValue();
        int j = Integer.valueOf(str.substring(5, 7)).intValue();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int k = calendar.get(1);
        int m = calendar.get(2);
        if (i != k || j != m + 1)
          FaturasActivity.n(this.b).setSelection(0); 
      } else {
        FaturasActivity.n(this.b).setSelection(0);
      } 
      FaturasActivity.b(this.b, false);
    } 
  }
  
  public void onPreExecute() {
    this.a = mxn.b(this.b.i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ieo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */