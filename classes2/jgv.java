import android.view.View;
import com.santander.app.investimentos.fundos.presentation.FundosDetalhesActivity;
import java.util.ArrayList;

public class jgv implements View.OnClickListener {
  public jgv(FundosDetalhesActivity paramFundosDetalhesActivity) {}
  
  public void onClick(View paramView) {
    jdz jdz = (jdz)paramView.getTag();
    ArrayList<gth> arrayList = new ArrayList();
    arrayList.add(new gth(jdz.c(), Boolean.valueOf(true), Boolean.valueOf(true), 16));
    arrayList.add(new gth(jdz.b(), Boolean.valueOf(false), Boolean.valueOf(true), 14));
    FundosDetalhesActivity.b(this.a).a(arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jgv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */