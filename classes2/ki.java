import android.view.View;
import br.com.santander.dynamicauth.features.cso.a.a;

public class ki implements View.OnClickListener {
  public ki(a parama) {}
  
  public void onClick(View paramView) {
    if (a.a(this.a).length() >= 2) {
      a.a(this.a, a.a(this.a).substring(0, a.a(this.a).length() - 2));
      a.a(this.a, false);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */