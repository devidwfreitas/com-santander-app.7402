import android.app.Activity;
import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.List;

public class jab extends PagerAdapter {
  private Context a;
  
  private List<Integer> b;
  
  public jab(Context paramContext, List<Integer> paramList) {
    this.a = paramContext;
    this.b = paramList;
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.b.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    View view = ((Activity)this.a).getLayoutInflater().inflate(2130968796, null);
    ((ImageView)view.findViewById(2131756225)).setImageDrawable(ContextCompat.getDrawable(this.a, ((Integer)this.b.get(paramInt)).intValue()));
    paramViewGroup.addView(view);
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */