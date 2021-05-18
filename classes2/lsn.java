import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.ConfirmationPaymentActivity;
import com.santander.app.seguros.ui.sinister.activities.SinisterDocumentsActivity;

public class lsn implements View.OnClickListener {
  public lsn(SinisterDocumentsActivity paramSinisterDocumentsActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a, ConfirmationPaymentActivity.class);
    intent.putExtra("sinister-code", (new ejm()).b(SinisterDocumentsActivity.a(this.a)));
    intent.putExtra("details_certificate_key", SinisterDocumentsActivity.b(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */