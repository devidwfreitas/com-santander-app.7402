import android.content.ClipData;
import android.content.Context;
import android.view.View;
import android.widget.Toast;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

public class gjf implements View.OnClickListener {
  public gjf(ParcelamentoFaturaNaoCorrentistaComprovanteActivity paramParcelamentoFaturaNaoCorrentistaComprovanteActivity) {}
  
  public void onClick(View paramView) {
    ClipData clipData = ClipData.newPlainText("barcode", ParcelamentoFaturaNaoCorrentistaComprovanteActivity.a(this.a).c());
    ParcelamentoFaturaNaoCorrentistaComprovanteActivity.b(this.a).setPrimaryClip(clipData);
    Toast.makeText((Context)this.a, "Código de barras copiado para área de transferência", 0).show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gjf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */