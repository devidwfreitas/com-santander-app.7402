import android.content.DialogInterface;

class pq implements DialogInterface.OnClickListener {
  pq(pc parampc) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    pc.a(this.a, false);
    paramDialogInterface.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\pq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */