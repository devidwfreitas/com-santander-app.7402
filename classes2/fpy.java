import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.Serializable;
import java.util.Vector;

public class fpy extends fom implements Serializable {
  private static final long a = 1L;
  
  private Vector<fpj> b = null;
  
  private Context c = null;
  
  public fpy(Context paramContext, Vector<fpj> paramVector) {
    this.c = paramContext;
    this.b = paramVector;
  }
  
  public void a(nez paramnez) {}
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.b.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    if (((fpj)this.b.elementAt(paramInt)).b() == 0) {
      LinearLayout linearLayout1 = (LinearLayout)((Activity)this.c).getLayoutInflater().inflate(2130969222, null);
      TextView textView1 = (TextView)linearLayout1.findViewById(2131758481);
      TextView textView2 = (TextView)linearLayout1.findViewById(2131758482);
      TextView textView3 = (TextView)linearLayout1.findViewById(2131758483);
      TextView textView4 = (TextView)linearLayout1.findViewById(2131758484);
      TextView textView5 = (TextView)linearLayout1.findViewById(2131758485);
      TextView textView6 = (TextView)linearLayout1.findViewById(2131758486);
      ftl ftl = ((fpj)this.b.elementAt(paramInt)).a();
      textView1.setText(naq.c(ftl.c().a(), ftl.c().d()));
      textView2.setText(naj.s(ftl.f()));
      textView3.setText(naj.s(ftl.e()));
      textView4.setText(naj.s(ftl.d()));
      textView5.setText(naj.s(ftl.i()));
      textView6.setText(nak.l(ftl.c().c()));
      paramViewGroup.addView((View)linearLayout1, 0);
      return linearLayout1;
    } 
    LinearLayout linearLayout = (LinearLayout)((Activity)this.c).getLayoutInflater().inflate(2130969221, null);
    paramViewGroup.addView((View)linearLayout, 0);
    return linearLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fpy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */