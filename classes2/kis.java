import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;

class kis implements View.OnClickListener {
  kis(kip paramkip) {}
  
  public void onClick(View paramView) {
    frq.d("Outros_RecargaDeTelefone_Recarga_Acao", "SelecionarContato");
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission((Context)kip.a(this.a).a(), "android.permission.READ_CONTACTS") != 0) {
        ActivityCompat.requestPermissions((Activity)kip.a(this.a).a(), new String[] { "android.permission.READ_CONTACTS" }, 3);
        return;
      } 
      kip.a(this.a).b();
      return;
    } 
    kip.a(this.a).b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */