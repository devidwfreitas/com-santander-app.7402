import android.view.View;
import com.santander.app.investimentos.presentation.MeusInvestimentosActivity;

public class jka implements View.OnClickListener {
  public jka(MeusInvestimentosActivity paramMeusInvestimentosActivity) {}
  
  public void onClick(View paramView) {
    jdb jdb = (jdb)paramView.getTag();
    MeusInvestimentosActivity.a(this.a).a(jdb);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jka.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */