import android.content.Context;
import android.util.Log;
import android.view.View;

class sa implements View.OnClickListener {
  sa(rz paramrz) {}
  
  public void onClick(View paramView) {
    String str = aat.h(rz.a(this.a).n().k());
    if (str.equalsIgnoreCase("TESOURO DIRETO") || str.equalsIgnoreCase("TITULOS PUBLICOS")) {
      zs.a().a((Context)this.a.e(), null, new sb(this));
      return;
    } 
    Log.d("TRACE-MOD", "App Corretora: " + rz.a(this.a).n().k());
    zs.a().a((Context)this.a.e(), null, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\sa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */