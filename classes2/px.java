import android.util.Log;
import com.ca.android.app.CaMDOProgressBar;

class px implements ot {
  px(pc parampc) {}
  
  public void a(abv paramabv) {
    String str = ((ox)paramabv).a().b().c();
    str = aat.c(Double.valueOf(Double.parseDouble(str) / 100000.0D)) + " do CDI";
    pc.i(this.a).setText(str);
    pc.i(this.a).setVisibility(0);
    CaMDOProgressBar.setVisibility(pc.ao(this.a), 8);
    pc.b(this.a, pc.ap(this.a));
  }
  
  public void a(aby paramaby) {
    CaMDOProgressBar.setVisibility(pc.ao(this.a), 8);
    pc.i(this.a).setVisibility(0);
    Log.e("PROFITABILITY SERVICE", paramaby.b() + ": " + paramaby.a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\px.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */