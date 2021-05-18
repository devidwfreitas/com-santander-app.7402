import android.app.Activity;
import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.List;

public class hdj extends PagerAdapter {
  private List<ftl> a;
  
  private Context b;
  
  private boolean c;
  
  private boolean d;
  
  private TextView e;
  
  public hdj(Activity paramActivity, List<ftl> paramList, int paramInt, boolean paramBoolean) {
    this.b = (Context)paramActivity;
    this.a = paramList;
    if (paramInt == 1)
      this.c = true; 
    this.d = paramBoolean;
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    View view = ((Activity)this.b).getLayoutInflater().inflate(2130969007, null);
    if (this.a.size() > paramInt) {
      ftl ftl = this.a.get(paramInt);
      ((TextView)view.findViewById(2131757119)).setText(ftl.c().a());
      ((TextView)view.findViewById(2131757120)).setText(naq.h(ftl.c().d()));
      paramViewGroup.addView(view, 0);
    } 
    if (!this.c && this.a.size() - 1 == paramInt) {
      view.findViewById(2131757118).setVisibility(8);
      view.findViewById(2131757121).setVisibility(0);
    } 
    if (!this.d) {
      this.e = (TextView)view.findViewById(2131757122);
      this.e.setText("Nova Conta de Terceiros");
    } 
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */