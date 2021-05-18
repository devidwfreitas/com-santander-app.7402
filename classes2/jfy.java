import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.santander.app.investimentos.fundos.presentation.ConfirmacaoAplicacaoActivity;

public class jfy implements View.OnClickListener {
  public jfy(ConfirmacaoAplicacaoActivity paramConfirmacaoAplicacaoActivity, Dialog paramDialog, String paramString) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.b));
    this.c.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jfy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */