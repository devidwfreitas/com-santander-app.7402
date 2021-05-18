import android.app.Dialog;
import android.os.AsyncTask;
import com.santander.app.faturas.activity.FaturasActivity;

public class iep extends AsyncTask<Void, Void, fui> {
  public Dialog a = null;
  
  private iep(FaturasActivity paramFaturasActivity) {}
  
  protected fui a(Void... paramVarArgs) {
    try {
      if (FaturasActivity.f(this.b) == null)
        FaturasActivity.a(this.b, this.b.v.f().s().d().get(FaturasActivity.a(this.b))); 
      fui fui2 = FaturasActivity.f(this.b).j();
      fui fui1 = fui2;
      if (fui2 == null) {
        fui1 = hat.i().c(FaturasActivity.f(this.b));
        if (fui1.a().size() > 1 && ((fue)fui1.a().get(0)).a().contains("0001"))
          fui1.a().remove(0); 
      } 
      return fui1;
    } catch (Exception exception) {
      return null;
    } 
  }
  
  protected void a(fui paramfui) {
    if (this.a != null && this.a.isShowing()) {
      this.a.cancel();
      this.a = null;
    } 
    if (paramfui == null) {
      hat.d().a(this.b.i, paramfui, true, false);
    } else if (paramfui.hasError()) {
      hav.b(this.b.i, this.b.getResources().getString(2131296852));
      hat.d().a(this.b.i, paramfui, true, false);
    } else {
      if (paramfui.a() != null && paramfui.a().size() > 0)
        FaturasActivity.f(this.b).a(paramfui); 
      FaturasActivity.g(this.b);
    } 
    FaturasActivity.a(this.b, null, 0);
  }
  
  public void onPreExecute() {
    this.a = mxn.b(this.b.i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */