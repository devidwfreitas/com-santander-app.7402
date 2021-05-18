import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.investimentos.fundos.presentation.FundosAplicacaoActivity;
import com.santander.app.investimentos.fundos.presentation.FundosDetalhesActivity;
import java.io.Serializable;
import java.util.ArrayList;

public class jgu implements View.OnClickListener {
  public jgu(FundosDetalhesActivity paramFundosDetalhesActivity) {}
  
  public void onClick(View paramView) {
    jdx jdx = (jdx)paramView.getTag();
    if (mzr.a()) {
      this.a.a();
      return;
    } 
    if (!FundosDetalhesActivity.a(this.a)) {
      if (jdx.t() != jdk.CANCELAR) {
        Intent intent = new Intent((Context)this.a.i, FundosAplicacaoActivity.class);
        intent.putExtra("fundos_detalhes", (Serializable)jdx);
        this.a.startActivity(intent);
        return;
      } 
      return;
    } 
    ArrayList<gth> arrayList = new ArrayList();
    arrayList.add(new gth(this.a.getResources().getString(2131298965), Boolean.valueOf(true), Boolean.valueOf(true), 16));
    arrayList.add(new gth(this.a.getResources().getString(2131297134), Boolean.valueOf(false), Boolean.valueOf(true), 14));
    FundosDetalhesActivity.b(this.a).a(arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jgu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */