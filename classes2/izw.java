import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.santander.app.idsantander.presentation.IdSantanderValidacaoSMSActivity;

public class izw extends BroadcastReceiver {
  public izw(IdSantanderValidacaoSMSActivity paramIdSantanderValidacaoSMSActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if (paramIntent.hasExtra("y")) {
      this.a.a = Boolean.valueOf(true);
      String str = paramIntent.getStringExtra("y");
      IdSantanderValidacaoSMSActivity.a(this.a).setEnabled(false);
      IdSantanderValidacaoSMSActivity.a(this.a).setText(str);
      IdSantanderValidacaoSMSActivity.b(this.a);
      return;
    } 
    this.a.a = Boolean.valueOf(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\izw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */