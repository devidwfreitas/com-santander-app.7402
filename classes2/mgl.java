import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;
import com.santander.app.seguros.utils.DummyActivity;

public class mgl implements View.OnClickListener {
  public mgl(DummyActivity paramDummyActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a, ContractActivity.class);
    intent.putExtra("tela", "perguntas");
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */