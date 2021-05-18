import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.List;

public class lhy extends PagerAdapter {
  private RelativeLayout a;
  
  private ImageView b;
  
  private List<kue> c;
  
  private grs d;
  
  public lhy(List<kue> paramList, grs paramgrs) {
    this.c = paramList;
    this.d = paramgrs;
  }
  
  private void a(View paramView) {
    this.a = (RelativeLayout)paramView.findViewById(2131755918);
    this.b = (ImageView)paramView.findViewById(2131756406);
  }
  
  public kud a(int paramInt) {
    return ((kue)this.c.get(paramInt)).a();
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.c.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    View view = this.d.getLayoutInflater().inflate(2130968835, paramViewGroup, false);
    a(view);
    kud kud = a(paramInt);
    this.b.setImageResource(kud.h());
    if (!kud.d().g())
      this.b.setColorFilter((ColorFilter)new PorterDuffColorFilter(ContextCompat.getColor((Context)this.d, 2131624056), PorterDuff.Mode.SRC_IN)); 
    paramViewGroup.addView(view);
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lhy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */