import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.List;

public class jsm extends PagerAdapter {
  private LayoutInflater a;
  
  private List<jrv> b;
  
  private Context c;
  
  private int d;
  
  public jsm(Context paramContext, List<jrv> paramList, int paramInt) {
    this.b = paramList;
    this.c = paramContext;
    this.a = LayoutInflater.from(paramContext);
    this.d = paramInt;
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {}
  
  public int getCount() {
    return this.b.size();
  }
  
  public int getItemPosition(Object paramObject) {
    return super.getItemPosition(paramObject);
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    jrv jrv = this.b.get(paramInt);
    RelativeLayout relativeLayout = (RelativeLayout)this.a.inflate(2130969404, null);
    TextView textView = (TextView)relativeLayout.findViewById(2131759193);
    if (((jrv)this.b.get(paramInt)).d() != 0) {
      textView.setText(this.c.getResources().getString(jrv.d()));
      textView.setBackgroundColor(this.d);
      ((ImageView)relativeLayout.findViewById(2131759192)).setImageResource(jrv.e());
      paramViewGroup.addView((View)relativeLayout);
      return relativeLayout;
    } 
    textView.setText("");
    ((ImageView)relativeLayout.findViewById(2131759192)).setImageResource(jrv.e());
    paramViewGroup.addView((View)relativeLayout);
    return relativeLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jsm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */