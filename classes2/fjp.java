import android.view.View;
import android.widget.LinearLayout;
import com.santander.app.ParcelamentoFacturaActivity;

public class fjp implements View.OnClickListener {
  public fjp(ParcelamentoFacturaActivity paramParcelamentoFacturaActivity) {}
  
  public void onClick(View paramView) {
    if (((LinearLayout)this.a.findViewById(2131759219)).getVisibility() == 0) {
      ParcelamentoFacturaActivity.a(this.a, new fka(this.a, null));
      ParcelamentoFacturaActivity.a(this.a).execute((Object[])new Void[0]);
      return;
    } 
    hav.d(ParcelamentoFacturaActivity.b(this.a), this.a.getResources().getString(2131297178));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */