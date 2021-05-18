import android.content.Intent;
import android.view.View;
import com.santander.app.Rendafixa_posicaoconsolidadaActivity;
import com.santander.app.Rendafixa_posicaoconsolidada_Detahle;

public class fnb implements View.OnClickListener {
  public fnb(Rendafixa_posicaoconsolidadaActivity paramRendafixa_posicaoconsolidadaActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.a.getApplicationContext(), Rendafixa_posicaoconsolidada_Detahle.class);
    intent.putExtra("data", (fwi)paramView.getTag());
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */