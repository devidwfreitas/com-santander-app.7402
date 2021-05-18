import android.view.View;
import com.santander.app.desbloqueio.cartao.activity.DesbloqueioCartoesActivity;

public class hcn implements View.OnFocusChangeListener {
  public hcn(DesbloqueioCartoesActivity paramDesbloqueioCartoesActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (!paramBoolean)
      DesbloqueioCartoesActivity.a(this.a).setText(nai.b(DesbloqueioCartoesActivity.a(this.a).getText().toString())); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hcn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */