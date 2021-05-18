import android.content.IntentFilter;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import com.santander.app.idsantander.presentation.IdSantanderValidacaoSMSActivity;

public class izy implements View.OnClickListener {
  public izy(IdSantanderValidacaoSMSActivity paramIdSantanderValidacaoSMSActivity, Button paramButton) {}
  
  public void onClick(View paramView) {
    this.b.registerReceiver(IdSantanderValidacaoSMSActivity.d(this.b), new IntentFilter("S"));
    IdSantanderValidacaoSMSActivity.e(this.b).b();
    IdSantanderValidacaoSMSActivity.e(this.b).a();
    this.a.setText((CharSequence)Html.fromHtml(this.b.getResources().getString(2131296667)));
    this.a.setEnabled(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\izy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */