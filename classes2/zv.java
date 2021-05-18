import android.content.Context;
import android.content.DialogInterface;

class zv implements DialogInterface.OnClickListener {
  zv(zs paramzs, String paramString, Context paramContext, int paramInt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (this.a != null)
      zy.b(this.b.getString(this.c), this.b.getString(lg.tag_valor_cancelar)); 
    paramDialogInterface.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\zv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */