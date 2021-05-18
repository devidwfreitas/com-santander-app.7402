import android.content.DialogInterface;

final class mhm implements DialogInterface.OnClickListener {
  mhm(Runnable paramRunnable) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    paramDialogInterface.dismiss();
    this.a.run();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */