import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.ActivityCompat;
import android.view.View;
import com.santander.app.MinhaConta;
import com.santander.app.faturas.activity.FaturasActivity;

public class iee implements View.OnClickListener {
  public iee(FaturasActivity paramFaturasActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent("android.intent.action.CALL");
    intent.setData(Uri.parse("tel:40043535"));
    if (ActivityCompat.checkSelfPermission(MinhaConta.b(), "android.permission.CALL_PHONE") == 0)
      this.a.startActivity(intent); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iee.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */