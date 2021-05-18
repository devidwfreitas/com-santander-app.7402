import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.List;
import java.util.Locale;

public class kgq extends BaseAdapter {
  private Context a;
  
  private List<kgm> b;
  
  private LayoutInflater c;
  
  private kgx d;
  
  public kgq(Context paramContext, List<kgm> paramList, kgx paramkgx) {
    this.a = paramContext;
    this.b = paramList;
    this.d = paramkgx;
  }
  
  public void a(kgs paramkgs) {
    paramkgs.c.setVisibility(8);
    paramkgs.f.setVisibility(0);
  }
  
  public void b(kgs paramkgs) {
    paramkgs.c.setVisibility(0);
    paramkgs.f.setVisibility(8);
  }
  
  public int getCount() {
    return this.b.size();
  }
  
  public Object getItem(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    kgs kgs;
    if (paramView == null) {
      this.c = (LayoutInflater)this.a.getSystemService("layout_inflater");
      paramView = this.c.inflate(2130968794, null);
      kgs = new kgs(paramView);
      paramView.setTag(kgs);
    } else {
      kgs = (kgs)paramView.getTag();
    } 
    String str = String.format(Locale.getDefault(), "(%s) %s", new Object[] { ((kgm)this.b.get(paramInt)).b().substring(1), ((kgm)this.b.get(paramInt)).w() });
    if (((kgm)this.b.get(paramInt)).v()) {
      a(kgs);
      kgs.d.setText(naj.f(((kgm)this.b.get(paramInt)).u()));
      kgs.a.setText(((kgm)this.b.get(paramInt)).p());
      kgs.b.setText(str);
      kgs.e.setImageResource(2130838886);
      kgs.e.setOnClickListener(new kgr(this, paramInt));
      return paramView;
    } 
    b(kgs);
    kgs.c.setText(naj.f(((kgm)this.b.get(paramInt)).u()));
    kgs.a.setText(((kgm)this.b.get(paramInt)).p());
    kgs.b.setText(str);
    kgs.e.setImageResource(2130838886);
    kgs.e.setOnClickListener(new kgr(this, paramInt));
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kgq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */