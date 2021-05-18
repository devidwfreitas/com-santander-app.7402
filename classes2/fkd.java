import android.app.Activity;
import android.view.View;
import android.widget.LinearLayout;
import com.santander.app.ParcelamentoTransaccionOkActivity;

public class fkd implements View.OnClickListener {
  public fkd(ParcelamentoTransaccionOkActivity paramParcelamentoTransaccionOkActivity, LinearLayout paramLinearLayout1, LinearLayout paramLinearLayout2) {}
  
  public void onClick(View paramView) {
    this.a.setVisibility(8);
    this.b.setVisibility(8);
    String str = ParcelamentoTransaccionOkActivity.a(this.c).a();
    myj.a((Activity)ParcelamentoTransaccionOkActivity.a(this.c), "", "", str);
    this.a.setVisibility(0);
    this.b.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */