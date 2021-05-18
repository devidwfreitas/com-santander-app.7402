import android.view.View;
import android.widget.AdapterView;
import com.santander.app.meuperfil.presentation.EscolhaContaPreferencialActivity;

public class jqv implements AdapterView.OnItemSelectedListener {
  public jqv(EscolhaContaPreferencialActivity paramEscolhaContaPreferencialActivity) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    boolean bool;
    jrd jrd = EscolhaContaPreferencialActivity.b(this.a);
    if (paramInt > 0) {
      bool = true;
    } else {
      bool = false;
    } 
    jrd.a(bool);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jqv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */