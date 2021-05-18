import android.content.DialogInterface;

class hsg implements DialogInterface.OnClickListener {
  hsg(hsf paramhsf, boolean paramBoolean, hsh paramhsh, Object paramObject1, Object paramObject2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (paramInt == -1) {
      if (this.a) {
        this.b.a(((Float)this.c).floatValue());
        return;
      } 
      this.b.a(((Integer)this.c).intValue());
      return;
    } 
    if (paramInt == -3) {
      if (this.a) {
        this.b.a(((Float)this.d).floatValue());
        return;
      } 
      this.b.a(((Integer)this.d).intValue());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hsg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */