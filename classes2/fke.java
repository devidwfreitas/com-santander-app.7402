import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.ParcelamentoTransaccionOkActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class fke implements View.OnClickListener {
  public fke(ParcelamentoTransaccionOkActivity paramParcelamentoTransaccionOkActivity) {}
  
  public void onClick(View paramView) {
    if (this.a.v.d()) {
      this.a.v.c(false);
      this.a.finishAffinity();
      this.a.a((Context)this.a);
      return;
    } 
    Intent intent = new Intent((Context)this.a, HomeLogadaActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fke.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */