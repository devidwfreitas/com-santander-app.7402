import android.app.Dialog;
import android.content.Context;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;

class grw implements View.OnClickListener {
  grw(grs paramgrs, Dialog paramDialog, int paramInt) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    if (this.b == 1) {
      if (ContextCompat.checkSelfPermission((Context)this.c.i, "android.permission.CAMERA") != 0 || ContextCompat.checkSelfPermission((Context)this.c.i, "android.permission.READ_EXTERNAL_STORAGE") != 0)
        ActivityCompat.requestPermissions(this.c.i, new String[] { "android.permission.CAMERA", "android.permission.READ_EXTERNAL_STORAGE" }, 1); 
      return;
    } 
    if (this.b == 2) {
      if (ContextCompat.checkSelfPermission((Context)this.c.i, "android.permission.CAMERA") != 0) {
        ActivityCompat.requestPermissions(this.c.i, new String[] { "android.permission.CAMERA" }, 2);
        return;
      } 
      return;
    } 
    if (this.b == 3) {
      if (ContextCompat.checkSelfPermission((Context)this.c.i, "android.permission.READ_CONTACTS") != 0) {
        ActivityCompat.requestPermissions(this.c.i, new String[] { "android.permission.READ_CONTACTS" }, 3);
        return;
      } 
      return;
    } 
    if (this.b == 4) {
      if (ContextCompat.checkSelfPermission((Context)this.c.i, "android.permission.ACCESS_COARSE_LOCATION") != 0 || ContextCompat.checkSelfPermission((Context)this.c.i, "android.permission.READ_PHONE_STATE") != 0) {
        ActivityCompat.requestPermissions(this.c.i, new String[] { "android.permission.ACCESS_COARSE_LOCATION", "android.permission.READ_PHONE_STATE" }, 4);
        return;
      } 
      return;
    } 
    if (this.b == 12 && ContextCompat.checkSelfPermission((Context)this.c.i, "android.permission.CAMERA") != 0) {
      ActivityCompat.requestPermissions(this.c.i, new String[] { "android.permission.CAMERA" }, 12);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\grw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */