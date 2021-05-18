import android.app.Activity;
import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Vector;

public class fpx extends PagerAdapter {
  private Vector<fpm> a = null;
  
  private Context b = null;
  
  public fpx(Context paramContext, Vector<fpm> paramVector) {
    this.b = paramContext;
    this.a = paramVector;
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject) {
    ((ViewPager)paramView).removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object instantiateItem(View paramView, int paramInt) {
    LinearLayout linearLayout = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130968852, null);
    ((TextView)linearLayout.findViewById(2131756455)).setText(((fpm)this.a.get(paramInt)).b());
    ((ViewPager)paramView).addView((View)linearLayout, 0);
    return linearLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fpx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */