import android.content.DialogInterface;

class hwi implements DialogInterface.OnClickListener {
  hwi(hwc paramhwc) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (hwc.a(this.a) == null)
      return; 
    hwc.a(this.a, 2);
    hwc.a(this.a).b();
    hwc.a(this.a).a(hwc.c(this.a));
    hwc.a(this.a, false);
    paramDialogInterface.dismiss();
    hxi.g(hwc.b(this.a).a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hwi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */