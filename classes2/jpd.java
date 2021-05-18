import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import com.santander.app.meuperfil.activity.ContaPreferencialActivity;

public class jpd implements AdapterView.OnItemClickListener {
  public jpd(ContaPreferencialActivity paramContaPreferencialActivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    String str = ((ImageView)paramView.findViewById(2131756266)).getTag().toString();
    for (paramInt = 0; paramInt < ContaPreferencialActivity.f(this.a).size(); paramInt++) {
      fup fup = ContaPreferencialActivity.f(this.a).get(paramInt);
      if (fup.a().equals(str)) {
        fup.a(true);
        ContaPreferencialActivity.a(this.a, fup.b());
      } else {
        fup.a(false);
      } 
      ContaPreferencialActivity.f(this.a).set(paramInt, fup);
    } 
    ContaPreferencialActivity.g(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jpd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */