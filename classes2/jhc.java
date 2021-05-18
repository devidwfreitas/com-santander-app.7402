import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.ActivityCompat;
import android.view.View;
import com.santander.app.MinhaConta;
import com.santander.app.investimentos.fundos.presentation.ListagemFundosActivity;

public class jhc implements View.OnClickListener {
  public jhc(ListagemFundosActivity paramListagemFundosActivity) {}
  
  public void onClick(View paramView) {
    if (ActivityCompat.checkSelfPermission(MinhaConta.b(), "android.permission.CALL_PHONE") == 0)
      this.a.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:01130120258"))); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jhc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */