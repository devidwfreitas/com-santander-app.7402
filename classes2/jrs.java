import android.content.DialogInterface;

class jrs implements DialogInterface.OnClickListener {
  jrs(jrr paramjrr) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    String str2 = jrr.b()[paramInt].toString();
    String str1 = str2;
    if (str2.equalsIgnoreCase("Seguimento Corrente"))
      str1 = null; 
    jrr.a(this.a, str1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jrs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */