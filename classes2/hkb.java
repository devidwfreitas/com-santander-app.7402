import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.List;

public class hkb extends BaseAdapter {
  private Context a;
  
  private LayoutInflater b;
  
  private List<gkx> c;
  
  private hkd d;
  
  public hkb(Context paramContext, List<gkx> paramList) {
    this.a = paramContext;
    this.c = paramList;
  }
  
  public gkx a(int paramInt) {
    return this.c.get(paramInt);
  }
  
  public int getCount() {
    return this.c.size();
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    gkx gkx = this.c.get(paramInt);
    this.b = (LayoutInflater)this.a.getSystemService("layout_inflater");
    View view = this.b.inflate(2130969257, null);
    this.d = new hkd(null);
    RelativeLayout relativeLayout1 = (RelativeLayout)view.findViewById(2131758619);
    RelativeLayout relativeLayout2 = (RelativeLayout)view.findViewById(2131758612);
    if (gkx.b() == 1) {
      relativeLayout1.setVisibility(0);
      relativeLayout2.setVisibility(8);
      hkd.a(this.d, (TextView)relativeLayout1.findViewById(2131758614));
      hkd.b(this.d, (TextView)relativeLayout1.findViewById(2131758615));
      hkd.a(this.d).setText(gkx.a());
      if (gkx.c() != null) {
        hkd.b(this.d).setText(((gky)gkx.c().get(0)).c());
        view.setTag(this.d);
        return view;
      } 
      hkd.b(this.d).setVisibility(8);
      view.setTag(this.d);
      return view;
    } 
    relativeLayout1.setVisibility(8);
    relativeLayout2.setVisibility(0);
    ((TextView)view.findViewById(2131758610)).setText(gkx.a());
    hkd.a(this.d, (TextView)relativeLayout2.findViewById(2131758614));
    hkd.b(this.d, (TextView)relativeLayout2.findViewById(2131758615));
    hkd.c(this.d, (TextView)relativeLayout2.findViewById(2131758617));
    hkd.d(this.d, (TextView)relativeLayout2.findViewById(2131758618));
    hkd.a(this.d).setText(((gky)gkx.c().get(0)).b());
    hkd.b(this.d).setText(((gky)gkx.c().get(0)).c());
    hkd.c(this.d).setText(((gky)gkx.c().get(1)).b());
    hkd.d(this.d).setText(((gky)gkx.c().get(1)).c());
    view.setTag(this.d);
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hkb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */