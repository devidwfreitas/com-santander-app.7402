import android.widget.SeekBar;
import com.santander.app.perfil.activity.InvestimentosNoAtmActivity;

public class kbd implements SeekBar.OnSeekBarChangeListener {
  private int c = 0;
  
  private int d = 0;
  
  public kbd(InvestimentosNoAtmActivity paramInvestimentosNoAtmActivity, SeekBar paramSeekBar) {}
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean) {
    this.c = paramInt;
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {
    this.d = this.a.getProgress();
  }
  
  public void onStopTrackingTouch(SeekBar paramSeekBar) {
    if (this.c <= 25) {
      frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Acao", "NaoBloquear");
      this.a.setProgress(0);
      InvestimentosNoAtmActivity.a(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839075));
      InvestimentosNoAtmActivity.b(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839074));
      InvestimentosNoAtmActivity.c(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839074));
      InvestimentosNoAtmActivity.d(this.b).setTextColor(this.b.getResources().getColor(2131624195));
      InvestimentosNoAtmActivity.e(this.b).setTextColor(this.b.getResources().getColor(2131624186));
      InvestimentosNoAtmActivity.f(this.b).setTextColor(this.b.getResources().getColor(2131624186));
    } else if (this.c > 25 && this.c <= 50) {
      frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Acao", "Bloquear18hAte9h");
      this.a.setProgress(50);
      InvestimentosNoAtmActivity.a(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839074));
      InvestimentosNoAtmActivity.b(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839075));
      InvestimentosNoAtmActivity.c(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839074));
      InvestimentosNoAtmActivity.d(this.b).setTextColor(this.b.getResources().getColor(2131624186));
      InvestimentosNoAtmActivity.e(this.b).setTextColor(this.b.getResources().getColor(2131624195));
      InvestimentosNoAtmActivity.f(this.b).setTextColor(this.b.getResources().getColor(2131624186));
    } else if (this.c > 50 && this.c <= 75) {
      frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Acao", "Bloquear18hAte9h");
      this.a.setProgress(50);
      InvestimentosNoAtmActivity.a(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839074));
      InvestimentosNoAtmActivity.b(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839075));
      InvestimentosNoAtmActivity.c(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839074));
      InvestimentosNoAtmActivity.d(this.b).setTextColor(this.b.getResources().getColor(2131624186));
      InvestimentosNoAtmActivity.e(this.b).setTextColor(this.b.getResources().getColor(2131624195));
      InvestimentosNoAtmActivity.f(this.b).setTextColor(this.b.getResources().getColor(2131624186));
    } else if (this.c > 75) {
      frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Acao", "Bloquear24h");
      this.a.setProgress(100);
      InvestimentosNoAtmActivity.a(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839074));
      InvestimentosNoAtmActivity.b(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839074));
      InvestimentosNoAtmActivity.c(this.b).setImageDrawable(this.b.getResources().getDrawable(2130839075));
      InvestimentosNoAtmActivity.d(this.b).setTextColor(this.b.getResources().getColor(2131624186));
      InvestimentosNoAtmActivity.e(this.b).setTextColor(this.b.getResources().getColor(2131624186));
      InvestimentosNoAtmActivity.f(this.b).setTextColor(this.b.getResources().getColor(2131624195));
    } 
    if (this.d != this.c)
      this.b.a(this.c, this.d, this.a); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kbd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */