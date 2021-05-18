import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.view.View;

final class mhq implements View.OnClickListener {
  mhq(Dialog paramDialog, String paramString, Activity paramActivity) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.b));
    this.c.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */