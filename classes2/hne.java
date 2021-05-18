import android.util.Log;
import java.util.List;

class hne implements ih {
  hne(hnc paramhnc, List paramList, hna paramhna) {}
  
  public void onFailure(is paramis) {
    Log.e("CancelamentoRepository", "consultarConsig", new Exception("StatusCode: " + paramis.a() + "\nResponse: " + paramis.b()));
    this.b.a(false, this.a);
  }
  
  public void onSuccess(is paramis) {
    try {
      hnc.a(this.c).a(paramis.d());
      hlf hlf = mys.a().<hlf>a(paramis.c().toString(), hlf.class);
      this.a.addAll(hlf.a());
      this.b.a(true, this.a);
      return;
    } catch (Exception exception) {
      Log.e("CancelamentoRepository", "consultarConsig", exception);
      onFailure(paramis);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hne.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */