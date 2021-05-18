import android.app.Dialog;
import android.content.Intent;
import android.util.Log;
import android.view.View;

final class gqs implements View.OnClickListener {
  gqs(Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    try {
      Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
      if (intent.resolveActivity(gpu.m().getPackageManager()) != null)
        gpu.m().startActivityForResult(intent, 131); 
      this.a.dismiss();
      return;
    } catch (Exception exception) {
      Log.e("NavigationController", exception.getMessage(), exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gqs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */