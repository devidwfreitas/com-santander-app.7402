import android.app.Activity;
import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

public class fpo extends PagerAdapter {
  private List<fpn> a;
  
  private Context b;
  
  public fpo(Context paramContext, List<fpn> paramList) {
    this.a = paramList;
    this.b = paramContext;
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject) {
    ((ViewPager)paramView).removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object instantiateItem(View paramView, int paramInt) {
    LinearLayout linearLayout = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130968821, null);
    ((TextView)linearLayout.findViewById(2131756344)).setText(((fpn)this.a.get(paramInt)).a());
    ((ViewPager)paramView).addView((View)linearLayout, 0);
    return linearLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fpo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */