import android.app.Dialog;
import android.text.format.DateFormat;
import android.util.Log;
import com.santander.app.agendamentos.activity.AgendamentosActivity;
import java.util.Calendar;
import java.util.TimeZone;

public class fqp extends gne<Void, Void, frc> {
  private Dialog b;
  
  public fqp(AgendamentosActivity paramAgendamentosActivity) {}
  
  protected frc a(Void... paramVarArgs) {
    try {
      Calendar calendar1 = Calendar.getInstance(TimeZone.getDefault());
      calendar1.add(2, 12);
      String str1 = (String)DateFormat.format("yyyyMMdd", calendar1.getTime());
      Calendar calendar2 = Calendar.getInstance(TimeZone.getDefault());
      calendar2.add(2, -4);
      String str2 = (String)DateFormat.format("yyyyMMdd", calendar2.getTime());
      if (AgendamentosActivity.e(this.a) != null)
        return hat.m().b(str1, str2, AgendamentosActivity.e(this.a).getAgencia(), AgendamentosActivity.e(this.a).getCuenta()); 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
    return null;
  }
  
  public void a() {
    try {
      this.b = mxn.b(this.a.i);
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  protected void a(frc paramfrc) {
    if (this.b != null && this.b.isShowing()) {
      this.b.cancel();
      this.b = null;
    } 
    if (paramfrc == null || paramfrc.getFaultstring() != null) {
      hat.d().a(this.a.i, new fvu(), false, false);
      return;
    } 
    AgendamentosActivity.a(this.a, paramfrc);
    AgendamentosActivity.f(this.a);
    AgendamentosActivity.g(this.a);
    AgendamentosActivity.h(this.a).notifyDataSetChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */