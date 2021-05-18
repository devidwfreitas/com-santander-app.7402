import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.santander.app.Rendafixa_posicaoconsolidadaActivity;

public class fna implements View.OnClickListener {
  private boolean b = false;
  
  public fna(Rendafixa_posicaoconsolidadaActivity paramRendafixa_posicaoconsolidadaActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Investimentos_RendaFixa_PosicaoConsolidada_Acao", "DetalheInvestimento");
    if (this.b) {
      linearLayout = (LinearLayout)paramView.getParent();
      linearLayout.findViewById(2131758493).setVisibility(8);
      ((ImageView)linearLayout.findViewById(2131758540)).setImageDrawable(this.a.getResources().getDrawable(2130838906));
      this.b = false;
      return;
    } 
    LinearLayout linearLayout = (LinearLayout)linearLayout.getParent();
    linearLayout.findViewById(2131758493).setVisibility(0);
    ((ImageView)linearLayout.findViewById(2131758540)).setImageDrawable(this.a.getResources().getDrawable(2130838907));
    this.b = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fna.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */