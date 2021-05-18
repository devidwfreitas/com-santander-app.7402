import android.content.Context;
import android.text.TextUtils;
import android.widget.TextView;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;

public class liy implements kxl<String> {
  public liy(ContractActivity paramContractActivity) {}
  
  public void a(String paramString) {
    if (this.a.isFinishing())
      return; 
    ContractActivity.b(this.a).setState(aor.ERROR);
    try {
      String str;
      TextView textView = (TextView)ContractActivity.b(this.a).findViewById(2131757215);
      if (!TextUtils.isEmpty(paramString)) {
        str = paramString;
      } else {
        str = this.a.getResources().getString(2131297122);
      } 
      textView.setText(str);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      ContractActivity contractActivity = this.a;
      if (TextUtils.isEmpty(paramString))
        paramString = this.a.getResources().getString(2131297122); 
      mhj.c((Context)contractActivity, paramString);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\liy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */