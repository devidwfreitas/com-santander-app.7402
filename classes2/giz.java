import android.content.Intent;
import android.view.View;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaCorrentistaConfirmacaoActivity;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaCorrentistaValidacaoActivity;
import java.io.Serializable;

public class giz implements View.OnClickListener {
  public giz(ParcelamentoFaturaCorrentistaConfirmacaoActivity paramParcelamentoFaturaCorrentistaConfirmacaoActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.a.getApplicationContext(), ParcelamentoFaturaCorrentistaValidacaoActivity.class);
    intent.putExtra("parcelarFatura", (Serializable)ParcelamentoFaturaCorrentistaConfirmacaoActivity.a(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\giz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */