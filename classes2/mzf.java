import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.view.View;

final class mzf implements View.OnClickListener {
  mzf(Dialog paramDialog, Activity paramActivity) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    Intent intent = new Intent();
    intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
    intent.addCategory("android.intent.category.DEFAULT");
    intent.setData(Uri.parse("package:" + this.b.getPackageName()));
    intent.addFlags(268435456);
    intent.addFlags(1073741824);
    intent.addFlags(8388608);
    this.b.startActivity(intent);
    System.exit(1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */