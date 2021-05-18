import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;

final class asf implements DialogInterface.OnClickListener {
  asf(boolean paramBoolean, Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (this.a && this.b != null)
      ((Activity)this.b).finish(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\asf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */