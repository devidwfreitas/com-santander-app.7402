import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.ParcelamentoFacturaActivity;
import com.santander.app.ParcelamentoTransaccionErrorActivity;

public class fkc implements View.OnClickListener {
  public fkc(ParcelamentoTransaccionErrorActivity paramParcelamentoTransaccionErrorActivity) {}
  
  public void onClick(View paramView) {
    if (this.a.v.d()) {
      this.a.v.c(false);
      this.a.finishAffinity();
      this.a.a((Context)this.a);
      return;
    } 
    Intent intent = new Intent((Context)ParcelamentoTransaccionErrorActivity.a(this.a), ParcelamentoFacturaActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */