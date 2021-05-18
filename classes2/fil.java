import android.content.Intent;
import android.view.View;
import com.santander.app.InvestimentosConsolidadaActivity;
import com.santander.app.Rendafixa_posicaoconsolidada_Detahle;

public class fil implements View.OnClickListener {
  public fil(InvestimentosConsolidadaActivity paramInvestimentosConsolidadaActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.a.getApplicationContext(), Rendafixa_posicaoconsolidada_Detahle.class);
    intent.putExtra("data", (fwk)paramView.getTag());
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */