import android.content.Context;
import android.content.Intent;
import android.support.annotation.Nullable;
import com.santander.app.lojaonline.presentation.LojaOnlineActivity;

class hcg implements joj {
  hcg(hcf paramhcf, Context paramContext) {}
  
  public void a(@Nullable jnc paramjnc) {
    jnc jnc1 = null;
    if (paramjnc != null) {
      hcf.a(this.b);
      Intent intent = new Intent(this.a, LojaOnlineActivity.class);
      intent.setFlags(67108864);
      hbu hbu = new hbu(intent);
    } else {
      hcf.b(this.b);
      paramjnc = jnc1;
    } 
    this.b.a.a(this.a, (hbu)paramjnc);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hcg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */