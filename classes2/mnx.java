import android.view.View;
import com.santander.app.transferencia.presentation.FormaTransferenciaActivity;

public class mnx implements View.OnClickListener {
  public mnx(FormaTransferenciaActivity paramFormaTransferenciaActivity) {}
  
  public void onClick(View paramView) {
    if (FormaTransferenciaActivity.a(this.a).isChecked()) {
      FormaTransferenciaActivity.b(this.a).setVisibility(0);
      FormaTransferenciaActivity.c(this.a).setEnabled(false);
      FormaTransferenciaActivity.d(this.a).setTextViewInfo("Data início");
      FormaTransferenciaActivity.b(this.a).requestFocus();
      FormaTransferenciaActivity.e(this.a).post(new mny(this));
      FormaTransferenciaActivity.f(this.a).b(true);
      FormaTransferenciaActivity.g(this.a);
      return;
    } 
    FormaTransferenciaActivity.b(this.a).setVisibility(8);
    FormaTransferenciaActivity.d(this.a).setTextViewInfo("Agendar");
    FormaTransferenciaActivity.c(this.a).setEnabled(true);
    FormaTransferenciaActivity.d(this.a).setTextViewDate("");
    FormaTransferenciaActivity.e(this.a).post(new mnz(this));
    FormaTransferenciaActivity.f(this.a).b(false);
    FormaTransferenciaActivity.h(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mnx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */