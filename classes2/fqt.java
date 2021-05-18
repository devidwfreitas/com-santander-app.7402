import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.agendamentos.activity.CancelarAgendamentoActivity;
import com.santander.app.agendamentos.activity.GerarComprovanteAgendamentoActivity;
import java.io.Serializable;

public class fqt extends AsyncTask<frb, Void, frb> {
  public fqt(CancelarAgendamentoActivity paramCancelarAgendamentoActivity) {}
  
  protected frb a(frb... paramVarArgs) {
    try {
      frf frf = new frf();
      frf.b(paramVarArgs[0].K());
      frf.c(paramVarArgs[0].N());
      frf.d(paramVarArgs[0].O());
      frf.a(paramVarArgs[0].n());
      frf.setConnUuid(this.a.v.i());
      frf.setTokenSessao(this.a.v.j());
      frf.setTokenTransacao(this.a.v.f().m());
      return (new frj()).b(frf);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(frb paramfrb) {
    try {
      if (CancelarAgendamentoActivity.a(this.a) != null && CancelarAgendamentoActivity.a(this.a).isShowing()) {
        CancelarAgendamentoActivity.a(this.a).cancel();
        CancelarAgendamentoActivity.a(this.a, null);
      } 
      if (paramfrb == null) {
        hat.d().a(this.a.i, new fvu(), false, false);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      if (paramfrb == null) {
        hat.d().a(this.a.i, new fvu(), false, false);
        return;
      } 
    } 
    if (paramfrb.f() != null) {
      hat.d().a(this.a.i, paramfrb.f());
      return;
    } 
    if (paramfrb.ar().equalsIgnoreCase(this.a.getResources().getString(2131297341))) {
      mxn.a((Activity)this.a, paramfrb.f());
      return;
    } 
    CancelarAgendamentoActivity.b(this.a).l(paramfrb.e().a());
    CancelarAgendamentoActivity.b(this.a).k(paramfrb.e().b());
    Intent intent = new Intent((Context)this.a, GerarComprovanteAgendamentoActivity.class);
    intent.putExtra("EXTRADADOS", (Serializable)CancelarAgendamentoActivity.b(this.a));
    this.a.startActivity(intent);
  }
  
  public void onPreExecute() {
    try {
      CancelarAgendamentoActivity.a(this.a, mxn.b(this.a.i));
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */