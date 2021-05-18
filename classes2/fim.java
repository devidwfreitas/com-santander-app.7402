import android.content.Intent;
import android.view.View;
import com.santander.app.InvestimentosConsolidadaActivity;
import com.santander.app.InvestimentosFundoDetalleActivity;

public class fim implements View.OnClickListener {
  public fim(InvestimentosConsolidadaActivity paramInvestimentosConsolidadaActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.a.getApplicationContext(), InvestimentosFundoDetalleActivity.class);
    intent.putExtra("codigo", ((fwg)InvestimentosConsolidadaActivity.c(this.a).a().get(Integer.parseInt(paramView.getTag().toString().replace("av", "")))).b());
    intent.putExtra("nombre", ((fwg)InvestimentosConsolidadaActivity.c(this.a).a().get(Integer.parseInt(paramView.getTag().toString().replace("av", "")))).e());
    intent.putExtra("fecha", InvestimentosConsolidadaActivity.a(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fim.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */