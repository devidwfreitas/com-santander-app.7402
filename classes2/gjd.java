import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.HomeLogadaNaoCorrentistaActivity;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaNaoCorrentistaComprovanteActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class gjd implements View.OnClickListener {
  public gjd(ParcelamentoFaturaNaoCorrentistaComprovanteActivity paramParcelamentoFaturaNaoCorrentistaComprovanteActivity) {}
  
  public void onClick(View paramView) {
    Intent intent;
    if (this.a.v.f().e().booleanValue()) {
      intent = new Intent((Context)this.a, HomeLogadaNaoCorrentistaActivity.class);
    } else {
      intent = new Intent((Context)this.a, HomeLogadaActivity.class);
    } 
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gjd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */