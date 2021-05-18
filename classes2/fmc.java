import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.santander.app.RendaFixaAplicacaoActivity;

public class fmc implements View.OnClickListener {
  public fmc(RendaFixaAplicacaoActivity paramRendaFixaAplicacaoActivity, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    this.a.cancel();
    if (RendaFixaAplicacaoActivity.g(this.b) != null && RendaFixaAplicacaoActivity.g(this.b).isShowing())
      RendaFixaAplicacaoActivity.g(this.b).cancel(); 
    RendaFixaAplicacaoActivity.a(this.b, mxn.b((Activity)RendaFixaAplicacaoActivity.c(this.b)));
    RendaFixaAplicacaoActivity.a(this.b, new fmg(this.b, null));
    RendaFixaAplicacaoActivity.m(this.b).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */