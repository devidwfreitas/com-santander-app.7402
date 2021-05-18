import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

public class fpz extends fom implements View.OnClickListener {
  private List<? extends fss> a = null;
  
  private Context b = null;
  
  private nez c = null;
  
  private TextView d;
  
  public fpz(Context paramContext, List<? extends fss> paramList) {
    this.b = paramContext;
    this.a = paramList;
  }
  
  public void a() {
    if (this.d != null)
      this.d.setVisibility(4); 
  }
  
  public void a(nez paramnez) {
    this.c = paramnez;
  }
  
  public void b() {
    if (this.d != null)
      this.d.setVisibility(0); 
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
    LinearLayout linearLayout = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130968883, null);
    linearLayout.setOnClickListener(this);
    SharedPreferences sharedPreferences = this.b.getSharedPreferences("PoupancaPreferences", 0);
    ((TextView)linearLayout.findViewById(2131756614)).setText(((fss)this.a.get(paramInt)).d());
    this.d = (TextView)linearLayout.findViewById(2131756617);
    this.d.setText(naj.f(((fss)this.a.get(paramInt)).b().a()));
    linearLayout.setTag(this.a.get(paramInt));
    ((ViewPager)paramView).addView((View)linearLayout, 0);
    if (sharedPreferences.getInt("posicao_poupanca_state", 0) == 4) {
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fpz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */