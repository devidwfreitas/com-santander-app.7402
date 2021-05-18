import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.view.View;

final class gqq implements View.OnClickListener {
  gqq(Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://www.santander.com.br/br/abra-sua-conta-formulario"));
    gpu.m().startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gqq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */