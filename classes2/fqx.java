import android.app.Activity;
import android.os.AsyncTask;
import android.util.Base64;
import android.util.Log;
import com.santander.app.agendamentos.activity.DetalheAgendamentoActivity;

public class fqx extends AsyncTask<frb, Void, frb> {
  public fqx(DetalheAgendamentoActivity paramDetalheAgendamentoActivity) {}
  
  protected frb a(frb... paramVarArgs) {
    try {
      frf frf = new frf();
      frf.b(paramVarArgs[0].K());
      frf.c(paramVarArgs[0].N());
      frf.d(paramVarArgs[0].O());
      frf.setConnUuid(this.a.v.i());
      frf.setTokenSessao(this.a.v.j());
      frf.setTokenTransacao(this.a.v.f().m());
      return (new frj()).a(frf);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(frb paramfrb) {
    try {
      if (DetalheAgendamentoActivity.c(this.a) != null && DetalheAgendamentoActivity.c(this.a).isShowing()) {
        DetalheAgendamentoActivity.c(this.a).cancel();
        DetalheAgendamentoActivity.a(this.a, null);
      } 
      if (paramfrb == null) {
        hat.d().a(this.a.i, null, true, true);
        return;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      if (paramfrb == null) {
        hat.d().a(this.a.i, null, true, true);
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
    if (paramfrb.ae() != null) {
      naf naf = new naf();
      try {
        paramfrb.ad(naf.c(Base64.decode(paramfrb.ae(), 0)));
      } catch (Exception exception) {
        Log.e("Error", exception.getMessage());
      } 
    } 
    this.a.v.f().i(paramfrb.au());
    DetalheAgendamentoActivity.a(this.a, paramfrb);
    DetalheAgendamentoActivity.b(this.a, paramfrb);
  }
  
  public void onPreExecute() {
    try {
      DetalheAgendamentoActivity.a(this.a, mxn.b(this.a.i));
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */