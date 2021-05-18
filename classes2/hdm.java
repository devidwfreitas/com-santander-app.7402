import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.santander.app.dpp.DPPConfirmacaoActivity;
import com.santander.app.dpp.DPPListaProgramadaActivity;

class hdm implements View.OnClickListener {
  hdm(hdl paramhdl) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent(this.a.b.a.getApplicationContext(), DPPConfirmacaoActivity.class);
    Bundle bundle = new Bundle();
    bundle.putSerializable("dpp", DPPListaProgramadaActivity.c(this.a.b.a));
    bundle.putInt("opcao", 2);
    bundle.putInt("novaPoupanca", 1);
    intent.putExtras(bundle);
    this.a.b.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */