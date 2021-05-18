import android.app.Activity;
import android.content.Context;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Vector;

public class fpk extends fom {
  private Vector<fpb> a = null;
  
  private Context b = null;
  
  private nez c = null;
  
  public fpk(Context paramContext, Vector<fpb> paramVector) {
    this.b = paramContext;
    this.a = paramVector;
  }
  
  public void a(nez paramnez) {
    this.c = paramnez;
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject) {
    ((ViewPager)paramView).removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object instantiateItem(View paramView, int paramInt) {
    if (((fpb)this.a.get(paramInt)).c() == 0) {
      LinearLayout linearLayout1 = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130969253, null);
      linearLayout1.setOnClickListener(new fpl(this, paramInt));
      ((TextView)linearLayout1.findViewById(2131756472)).setText(((fpb)this.a.elementAt(paramInt)).a());
      ((ViewPager)paramView).addView((View)linearLayout1, 0);
      return linearLayout1;
    } 
    LinearLayout linearLayout = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130969252, null);
    ((ViewPager)paramView).addView((View)linearLayout, 0);
    return linearLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fpk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */