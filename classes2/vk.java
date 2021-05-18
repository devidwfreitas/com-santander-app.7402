import android.util.Log;
import android.view.View;

class vk implements View.OnClickListener {
  vk(vi paramvi, ve paramve) {}
  
  public void onClick(View paramView) {
    String str = aat.h(this.a.d());
    if (str.equalsIgnoreCase("TESOURO DIRETO") || str.equalsIgnoreCase("TITULOS PUBLICOS")) {
      zs.a().a(vi.a(this.b), str, new vl(this));
      return;
    } 
    Log.d("TRACE-MOD", "App Corretora: " + this.a.d());
    zs.a().a(vi.a(this.b), this.a.d(), null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\vk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */