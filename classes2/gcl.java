import android.util.Log;
import com.santander.app.cambio.transferenciaexterior.presentation.DemaisPaisesListActivity;

public class gcl implements gsm {
  public gcl(DemaisPaisesListActivity paramDemaisPaisesListActivity) {}
  
  public boolean a(String paramString) {
    Log.v("onQueryTextSubmit", "onQueryTextSubmit");
    return false;
  }
  
  public boolean b(String paramString) {
    Log.v("CARACTER SEARCH", paramString);
    DemaisPaisesListActivity.a(this.a, DemaisPaisesListActivity.a(this.a, paramString));
    DemaisPaisesListActivity.b(this.a).a(DemaisPaisesListActivity.a(this.a));
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gcl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */