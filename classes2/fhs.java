import android.app.Activity;
import android.os.AsyncTask;
import com.santander.app.FazerPagamentoConfirmacaoActivity;

public class fhs extends AsyncTask<fur, Void, Boolean> {
  public fhs(FazerPagamentoConfirmacaoActivity paramFazerPagamentoConfirmacaoActivity) {}
  
  protected Boolean a(fur... paramVarArgs) {
    boolean bool3 = false;
    boolean bool1 = false;
    fur fur1 = paramVarArgs[0];
    boolean bool2 = bool3;
    try {
      switch (fhr.a[fur1.f().ordinal()]) {
        case 1:
          bool2 = bool3;
          bool1 = hat.n().c(fur1);
          break;
        case 2:
          bool2 = bool3;
          bool1 = hat.n().a(fur1);
          break;
        case 3:
          bool2 = bool3;
          bool1 = hat.n().b(fur1);
          break;
      } 
      bool2 = bool1;
      return Boolean.valueOf(bool1);
    } catch (Exception exception) {
      return Boolean.valueOf(bool2);
    } 
  }
  
  protected void a(Boolean paramBoolean) {
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b((Activity)FazerPagamentoConfirmacaoActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */