import android.content.Context;
import android.content.DialogInterface;

class zt implements DialogInterface.OnClickListener {
  zt(zs paramzs, String paramString, Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (this.a != null)
      zy.b(this.b.getString(lg.tag_name_popup_corretora_tesouro_direto), this.b.getString(lg.tag_valor_cancelar)); 
    paramDialogInterface.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\zt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */