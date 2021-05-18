import android.content.Context;
import com.santander.app.seguros.ui.contract.activities.TermsOfUseActivity;

public class ljx implements Runnable {
  public ljx(TermsOfUseActivity paramTermsOfUseActivity) {}
  
  public void run() {
    String str = mhj.a((Context)this.a, "jsons/sinister/termsofuse.json");
    TermsOfUseActivity.a(this.a, mys.a().<kto>a(str, kto.class));
    lly lly = new lly(TermsOfUseActivity.g(this.a).c());
    lly.a((lmd)this.a);
    TermsOfUseActivity.h(this.a).setAdapter(lly);
    TermsOfUseActivity.i(this.a).setState(aor.CONTENT);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ljx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */