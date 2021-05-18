import android.app.Activity;
import android.content.Context;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Vector;

public class fph extends fom {
  private Vector<fpg> a = null;
  
  private Context b = null;
  
  private nez c = null;
  
  public fph(Context paramContext, Vector<fpg> paramVector) {
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
    LinearLayout linearLayout = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130969251, null);
    linearLayout.setOnClickListener(new fpi(this, paramInt));
    TextView textView1 = (TextView)linearLayout.findViewById(2131756472);
    TextView textView2 = (TextView)linearLayout.findViewById(2131758602);
    TextView textView3 = (TextView)linearLayout.findViewById(2131758606);
    textView1.setText(((fpg)this.a.elementAt(paramInt)).a());
    textView2.setText(((fpg)this.a.elementAt(paramInt)).b());
    textView3.setText(((fpg)this.a.elementAt(paramInt)).c());
    ((ViewPager)paramView).addView((View)linearLayout, 0);
    return linearLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */