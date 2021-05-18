import android.app.Activity;
import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.List;

public class fol extends PagerAdapter {
  private List<? extends fuu> a;
  
  private Context b;
  
  public fol(Activity paramActivity, List<? extends fuu> paramList) {
    this.b = (Context)paramActivity;
    this.a = paramList;
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    View view = ((Activity)this.b).getLayoutInflater().inflate(2130968882, null);
    fuu fuu = this.a.get(paramInt);
    TextView textView1 = (TextView)view.findViewById(2131756610);
    TextView textView2 = (TextView)view.findViewById(2131756611);
    textView1.setText("Conta Santander");
    textView2.setText(naq.c(fuu.getAgencia(), fuu.getCuenta()));
    paramViewGroup.addView(view, 0);
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fol.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */