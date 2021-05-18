import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.List;

public class hir extends BaseAdapter {
  private Context a;
  
  private List<gkx> b;
  
  public hir(Context paramContext, List<gkx> paramList) {
    this.a = paramContext;
    this.b = paramList;
  }
  
  public gkx a(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public int getCount() {
    return this.b.size();
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    TextView textView1;
    TextView textView2;
    TextView textView3;
    TextView textView4;
    TextView textView5;
    TextView textView6;
    TextView textView7;
    RelativeLayout relativeLayout1;
    RelativeLayout relativeLayout2;
    if (paramView == null) {
      paramView = LayoutInflater.from(this.a).inflate(2130969256, paramViewGroup, false);
      textView1 = (TextView)paramView.findViewById(2131758614);
      textView2 = (TextView)paramView.findViewById(2131758615);
      textView3 = (TextView)paramView.findViewById(2131758617);
      textView4 = (TextView)paramView.findViewById(2131758618);
      textView5 = (TextView)paramView.findViewById(2131758620);
      textView6 = (TextView)paramView.findViewById(2131758621);
      textView7 = (TextView)paramView.findViewById(2131758610);
      relativeLayout1 = (RelativeLayout)paramView.findViewById(2131758619);
      relativeLayout2 = (RelativeLayout)paramView.findViewById(2131758612);
      paramView.setTag(new his(this, textView1, textView2, textView3, textView4, textView5, textView6, textView7, relativeLayout1, relativeLayout2));
    } else {
      his his = (his)paramView.getTag();
      textView1 = his.a;
      textView2 = his.b;
      textView3 = his.c;
      textView4 = his.d;
      textView5 = his.e;
      textView6 = his.f;
      textView7 = his.g;
      relativeLayout1 = his.h;
      relativeLayout2 = his.i;
    } 
    gkx gkx = a(paramInt);
    if (gkx.b() == 1) {
      relativeLayout1.setVisibility(0);
      relativeLayout2.setVisibility(8);
      textView5.setText(gkx.a());
      if (gkx.c() != null) {
        textView6.setText(((gky)gkx.c().get(0)).c());
        return paramView;
      } 
      textView6.setVisibility(8);
      return paramView;
    } 
    relativeLayout1.setVisibility(8);
    relativeLayout2.setVisibility(0);
    textView7.setText(gkx.a());
    textView1.setText(((gky)gkx.c().get(0)).b());
    textView2.setText(((gky)gkx.c().get(0)).c());
    textView3.setText(((gky)gkx.c().get(1)).b());
    textView4.setText(((gky)gkx.c().get(1)).c());
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hir.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */