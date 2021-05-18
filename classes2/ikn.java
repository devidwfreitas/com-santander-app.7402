import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.BeneficiarioPagamentoListActivity;
import com.santander.app.FazerPagamentoActivity;

class ikn implements View.OnClickListener {
  ikn(ikl paramikl) {}
  
  public void onClick(View paramView) {
    FazerPagamentoActivity.a(ikl.a(this.a).getText().toString());
    FazerPagamentoActivity.a(ikl.b(this.a));
    Intent intent = new Intent((Context)this.a.getActivity(), BeneficiarioPagamentoListActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */