import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;

final class mzi implements View.OnClickListener {
  mzi(Dialog paramDialog, int paramInt, Activity paramActivity) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    if (this.b == 1) {
      if (ContextCompat.checkSelfPermission((Context)this.c, "android.permission.CAMERA") != 0 || ContextCompat.checkSelfPermission((Context)this.c, "android.permission.READ_EXTERNAL_STORAGE") != 0)
        ActivityCompat.requestPermissions(this.c, new String[] { "android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE" }, 1); 
      return;
    } 
    if (this.b == 2) {
      if (ContextCompat.checkSelfPermission((Context)this.c, "android.permission.CAMERA") != 0) {
        ActivityCompat.requestPermissions(this.c, new String[] { "android.permission.CAMERA" }, 2);
        return;
      } 
      return;
    } 
    if (this.b == 3) {
      if (ContextCompat.checkSelfPermission((Context)this.c, "android.permission.READ_CONTACTS") != 0) {
        ActivityCompat.requestPermissions(this.c, new String[] { "android.permission.READ_CONTACTS" }, 3);
        return;
      } 
      return;
    } 
    if (this.b == 4 && (ContextCompat.checkSelfPermission((Context)this.c, "android.permission.ACCESS_COARSE_LOCATION") != 0 || ContextCompat.checkSelfPermission((Context)this.c, "android.permission.READ_PHONE_STATE") != 0 || ContextCompat.checkSelfPermission((Context)this.c, "android.permission.READ_EXTERNAL_STORAGE") != 0)) {
      ActivityCompat.requestPermissions(this.c, new String[] { "android.permission.ACCESS_COARSE_LOCATION", "android.permission.READ_PHONE_STATE", "android.permission.READ_EXTERNAL_STORAGE" }, 4);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */