import android.view.View;
import android.widget.AdapterView;
import com.santander.app.idsantander.presentation.IdSantanderEscolhaCelularActivity;

public class iyo implements AdapterView.OnItemSelectedListener {
  public iyo(IdSantanderEscolhaCelularActivity paramIdSantanderEscolhaCelularActivity) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    boolean bool;
    jal jal = IdSantanderEscolhaCelularActivity.a(this.a);
    if (paramInt > 0) {
      bool = true;
    } else {
      bool = false;
    } 
    jal.a(Boolean.valueOf(bool));
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iyo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */