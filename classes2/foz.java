import android.app.Activity;
import android.content.Context;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Vector;

public class foz extends fom {
  private Vector<foy> a = null;
  
  private Context b = null;
  
  private nez c = null;
  
  public foz(Context paramContext, Vector<foy> paramVector) {
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
    LinearLayout linearLayout = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130969237, null);
    linearLayout.setOnClickListener(new fpa(this, paramInt));
    TextView textView1 = (TextView)linearLayout.findViewById(2131758547);
    TextView textView2 = (TextView)linearLayout.findViewById(2131758548);
    TextView textView3 = (TextView)linearLayout.findViewById(2131757284);
    TextView textView4 = (TextView)linearLayout.findViewById(2131758549);
    textView1.setText(((foy)this.a.elementAt(paramInt)).a());
    textView2.setText(((foy)this.a.elementAt(paramInt)).b());
    textView3.setText(((foy)this.a.elementAt(paramInt)).c());
    textView4.setText(((foy)this.a.elementAt(paramInt)).d());
    ((ViewPager)paramView).addView((View)linearLayout, 0);
    return linearLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\foz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */