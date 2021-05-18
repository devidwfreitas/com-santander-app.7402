import android.view.View;
import android.widget.AdapterView;
import com.santander.app.segundaviacomprovantes.presentation.SegundaViaActivity;

public class kmx implements AdapterView.OnItemSelectedListener {
  public kmx(SegundaViaActivity paramSegundaViaActivity) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    if (paramView != null && paramAdapterView.getSelectedItem() != null)
      frq.d("Outros_Comprovantes_Periodo_Acao", paramAdapterView.getSelectedItem().toString()); 
    SegundaViaActivity.d(this.a).e((String)paramAdapterView.getSelectedItem());
    if (paramAdapterView.getSelectedItemPosition() == 0) {
      SegundaViaActivity.d(this.a).f(SegundaViaActivity.b(this.a).e());
      SegundaViaActivity.d(this.a).g(SegundaViaActivity.b(this.a).h());
      SegundaViaActivity.e(this.a).setVisibility(8);
      return;
    } 
    if (paramAdapterView.getSelectedItemPosition() == 1) {
      SegundaViaActivity.d(this.a).f(SegundaViaActivity.b(this.a).f());
      SegundaViaActivity.d(this.a).g(SegundaViaActivity.b(this.a).h());
      SegundaViaActivity.e(this.a).setVisibility(8);
      return;
    } 
    if (paramAdapterView.getSelectedItemPosition() == 2) {
      SegundaViaActivity.d(this.a).f(SegundaViaActivity.b(this.a).g());
      SegundaViaActivity.d(this.a).g(SegundaViaActivity.b(this.a).h());
      SegundaViaActivity.e(this.a).setVisibility(8);
      return;
    } 
    if (paramAdapterView.getSelectedItemPosition() == 3) {
      SegundaViaActivity.e(this.a).setVisibility(0);
      return;
    } 
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kmx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */