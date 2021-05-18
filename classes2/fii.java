import android.content.Intent;
import android.view.View;
import com.santander.app.InvestimentosConsolidadaActivity;
import com.santander.app.InvestimentosFundoDetalleActivity;

public class fii implements View.OnClickListener {
  public fii(InvestimentosConsolidadaActivity paramInvestimentosConsolidadaActivity, jdd paramjdd) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.b.getApplicationContext(), InvestimentosFundoDetalleActivity.class);
    intent.putExtra("agencia", this.a.f());
    intent.putExtra("conta", this.a.g());
    intent.putExtra("codigo", this.a.b());
    intent.putExtra("nombre", this.a.c());
    intent.putExtra("fecha", InvestimentosConsolidadaActivity.a(this.b));
    this.b.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fii.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */