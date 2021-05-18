import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import java.util.List;

public class for extends fom implements View.OnClickListener {
  private List<? extends fuu> a = null;
  
  private Context b = null;
  
  private nez c = null;
  
  private RelativeLayout d;
  
  private RelativeLayout e;
  
  public for(Context paramContext, List<Conta> paramList) {
    this.b = paramContext;
    this.a = (List)paramList;
  }
  
  public void a() {
    if (this.d != null && this.e != null) {
      this.d.setVisibility(4);
      this.e.setVisibility(4);
    } 
  }
  
  public void a(nez paramnez) {
    this.c = paramnez;
  }
  
  public void b() {
    if (this.d != null && this.e != null) {
      this.d.setVisibility(0);
      this.e.setVisibility(0);
    } 
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject) {
    ((ViewPager)paramView).removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public int getItemPosition(Object paramObject) {
    return -2;
  }
  
  public Object instantiateItem(View paramView, int paramInt) {
    LinearLayout linearLayout = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130968881, null);
    linearLayout.setOnClickListener(this);
    this.d = (RelativeLayout)linearLayout.findViewById(2131756606);
    this.e = (RelativeLayout)linearLayout.findViewById(2131756608);
    SharedPreferences sharedPreferences = this.b.getSharedPreferences("SaldoPreferences", 0);
    ((TextView)linearLayout.findViewById(2131756597)).setText("Conta Santander");
    ((TextView)linearLayout.findViewById(2131756598)).setText(naq.c(((fuu)this.a.get(paramInt)).getAgencia(), ((fuu)this.a.get(paramInt)).getCuenta()));
    hau.a().b(((fuu)this.a.get(paramInt)).getAgencia());
    TextView textView = (TextView)linearLayout.findViewById(2131756601);
    if (((fuu)this.a.get(paramInt)).getExtractoHome() != null)
      textView.setText(naj.f(((fuu)this.a.get(paramInt)).getExtractoHome().u())); 
    ((TextView)linearLayout.findViewById(2131756590)).setText(naj.f(((fuu)this.a.get(paramInt)).getValor()));
    linearLayout.setTag(this.a.get(paramInt));
    ((ViewPager)paramView).addView((View)linearLayout, 0);
    if (sharedPreferences.getInt("saldo_state", 0) == 4) {
      a();
      return linearLayout;
    } 
    b();
    return linearLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
  
  public void onClick(View paramView) {
    if (this.c != null)
      this.c.a(this.a.indexOf(paramView.getTag())); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\for.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */