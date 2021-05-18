import android.content.Intent;
import com.santander.app.novidades.view.NovidadesActivity;
import java.util.List;

class jrt implements jsg {
  jrt(jrr paramjrr, String paramString) {}
  
  public void a(List<jrv> paramList) {
    if (paramList.isEmpty()) {
      jrr.a(this.b);
      return;
    } 
    Intent intent = new Intent(jrr.b(this.b), NovidadesActivity.class);
    intent.putExtra("extra_segment", this.a);
    jrr.b(this.b).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jrt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */