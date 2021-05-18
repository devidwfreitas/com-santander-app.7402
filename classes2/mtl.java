import android.view.View;
import android.widget.AdapterView;
import com.santander.app.transfergolden.presentation.LeituraInfoEditText;

public class mtl implements AdapterView.OnItemSelectedListener {
  public mtl(LeituraInfoEditText paramLeituraInfoEditText) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    LeituraInfoEditText.a(this.a, (String)LeituraInfoEditText.a(this.a).getSelectedItem());
    this.a.d();
    if (LeituraInfoEditText.b(this.a) != null)
      LeituraInfoEditText.b(this.a).a(); 
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mtl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */