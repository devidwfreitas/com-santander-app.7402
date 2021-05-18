import android.app.Activity;
import android.content.Context;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Vector;

public class fqb extends fom {
  private Vector<fqa> a = null;
  
  private Context b = null;
  
  private nez c = null;
  
  public fqb(Context paramContext, Vector<fqa> paramVector) {
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
    LinearLayout linearLayout = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130969425, null);
    linearLayout.setOnClickListener(new fqc(this, paramInt));
    TextView textView2 = (TextView)linearLayout.findViewById(2131756133);
    TextView textView1 = (TextView)linearLayout.findViewById(2131755121);
    textView2.setText(((fqa)this.a.elementAt(paramInt)).a());
    String str = ((fqa)this.a.elementAt(paramInt)).b();
    if (!"".equals(str) && str != null) {
      textView1.setText(str);
      ((ViewPager)paramView).addView((View)linearLayout, 0);
      return linearLayout;
    } 
    textView1.setVisibility(8);
    ((ViewPager)paramView).addView((View)linearLayout, 0);
    return linearLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */