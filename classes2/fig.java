import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.santander.app.HomeLogadaNaoCorrentistaActivity;

public final class fig implements View.OnClickListener {
  public fig(Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(HomeLogadaNaoCorrentistaActivity.b()));
    HomeLogadaNaoCorrentistaActivity.c().startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */