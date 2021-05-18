import android.app.Activity;
import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

public class fpu extends PagerAdapter {
  private List<fpt> a;
  
  private Context b;
  
  public fpu(Context paramContext, List<fpt> paramList) {
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
    LinearLayout linearLayout = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130969407, null);
    TextView textView1 = (TextView)linearLayout.findViewById(2131759229);
    textView1.setText(((fpt)this.a.get(paramInt)).a());
    TextView textView2 = (TextView)linearLayout.findViewById(2131759230);
    textView2.setText(((fpt)this.a.get(paramInt)).b());
    if (((fpt)this.a.get(paramInt)).c() == 2) {
      textView1.setVisibility(8);
      textView2.setVisibility(8);
      textView1 = (TextView)linearLayout.findViewById(2131759231);
      textView1.setVisibility(0);
      textView1.setText("");
      try {
        float f1 = Float.parseFloat(((fpt)this.a.get(paramInt)).a());
        float f2 = Float.parseFloat(((fpt)this.a.get(paramInt)).b()) / 100.0F;
        textView1.setText(Float.valueOf(f1).intValue() + "x" + naj.f(Float.valueOf(f2).toString()));
      } catch (Exception exception) {}
    } 
    ((ViewPager)paramView).addView((View)linearLayout, 0);
    return linearLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fpu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */