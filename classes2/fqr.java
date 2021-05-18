import android.app.Dialog;
import android.util.Log;
import com.santander.app.agendamentos.activity.AgendamentosActivity;
import com.santander.app.contacorrente.domain.Conta;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class fqr extends gne<Void, Void, fuy> {
  private Dialog b;
  
  private int c;
  
  private boolean d = false;
  
  private fqr(AgendamentosActivity paramAgendamentosActivity) {}
  
  protected fuy a(Void... paramVarArgs) {
    try {
      Conta conta = this.a.v.f().q().a().get(this.c);
      if (conta.getExtracto() != null) {
        fuy fuy1 = conta.getExtracto();
        conta.setExtracto(fuy1);
        return fuy1;
      } 
      SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(new Date());
      calendar.setTime(new Date());
      calendar.add(5, -6);
      String str2 = simpleDateFormat.format(new Date(calendar.getTimeInMillis()));
      String str1 = simpleDateFormat.format(new Date());
      fuy fuy = hat.g().a(conta.getAgencia(), conta.getCuenta(), str2, str1);
      conta.setExtracto(fuy);
      return fuy;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  public void a() {
    if (((Conta)this.a.v.f().q().a().get(this.c)).getExtracto() == null && this.d)
      try {
        this.b = mxn.b(this.a.i);
        return;
      } catch (Exception exception) {
        return;
      }  
  }
  
  public void a(int paramInt) {
    this.c = paramInt;
  }
  
  protected void a(fuy paramfuy) {
    if (this.b != null && this.b.isShowing()) {
      this.b.cancel();
      this.b = null;
    } 
    if (paramfuy != null && !paramfuy.hasError()) {
      ((Conta)this.a.v.f().q().a().get(this.c)).setExtracto(paramfuy);
      AgendamentosActivity.j(this.a);
    } 
  }
  
  public void a(boolean paramBoolean) {
    this.d = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */