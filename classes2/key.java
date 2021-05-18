import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.santander.app.previdencia.presentation.SemPrevidenciaActivity;

public class key implements View.OnClickListener {
  public key(SemPrevidenciaActivity paramSemPrevidenciaActivity) {}
  
  public void onClick(View paramView) {
    this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://santander.custhelp.com/app/chat/chat_santander/p/94")));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\key.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */