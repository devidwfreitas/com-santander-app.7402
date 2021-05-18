import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ListAdapter;
import com.santander.app.dpp.DPPListaProgramadaActivity;
import java.util.ArrayList;

public class hdp extends AsyncTask<Void, Void, hen> {
  public hdp(DPPListaProgramadaActivity paramDPPListaProgramadaActivity) {}
  
  protected hen a(Void... paramVarArgs) {
    try {
      return hat.u().b();
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(hen paramhen) {
    if (this.a.d != null && this.a.d.isShowing()) {
      this.a.d.cancel();
      this.a.d = null;
    } 
    if (paramhen != null) {
      hdq hdq1;
      if (paramhen.a().equals("0")) {
        if (paramhen.d().size() > 0) {
          DPPListaProgramadaActivity.a(this.a, paramhen);
          DPPListaProgramadaActivity.a(this.a, DPPListaProgramadaActivity.b(this.a).d());
          hdq hdq2 = new hdq(DPPListaProgramadaActivity.b(this.a).d(), (Context)this.a);
          this.a.c.setAdapter((ListAdapter)hdq2);
          return;
        } 
        DPPListaProgramadaActivity.a(this.a, new ArrayList());
        hdq1 = new hdq(DPPListaProgramadaActivity.a(this.a), (Context)this.a);
        this.a.c.setAdapter((ListAdapter)hdq1);
        return;
      } 
      hat.d().a(DPPListaProgramadaActivity.d(this.a), (fvu)hdq1, true, false);
      return;
    } 
    DPPListaProgramadaActivity.a(this.a, new ArrayList());
    hdq hdq = new hdq(DPPListaProgramadaActivity.a(this.a), (Context)this.a);
    this.a.c.setAdapter((ListAdapter)hdq);
  }
  
  public void onPreExecute() {
    this.a.d = mxn.b(DPPListaProgramadaActivity.d(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */