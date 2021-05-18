import android.view.View;
import com.santander.app.investimentos.fundos.presentation.FundosAplicacaoActivity;

public class jgr implements View.OnClickListener {
  public jgr(FundosAplicacaoActivity paramFundosAplicacaoActivity) {}
  
  public void onClick(View paramView) {
    FundosAplicacaoActivity.m(this.a).setVisibility(0);
    FundosAplicacaoActivity.d(this.a).setText("000");
    FundosAplicacaoActivity.p(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jgr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */