import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

@SuppressLint({"NewApi"})
public class knb extends BaseAdapter {
  private Context a;
  
  private List<klx> b;
  
  private LayoutInflater c;
  
  public knb(Context paramContext, List<klx> paramList) {
    this.a = paramContext;
    this.b = paramList;
  }
  
  public int getCount() {
    return this.b.size();
  }
  
  public Object getItem(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    knc knc;
    if (paramView == null) {
      this.c = (LayoutInflater)this.a.getSystemService("layout_inflater");
      paramView = this.c.inflate(2130969481, null);
      knc = new knc(this);
      knc.a(knc, (TextView)paramView.findViewById(2131759486));
      knc.b(knc, (TextView)paramView.findViewById(2131759488));
      knc.c(knc, (TextView)paramView.findViewById(2131759487));
      knc.a(knc, (ImageView)paramView.findViewById(2131759489));
      paramView.setTag(knc);
    } else {
      knc = (knc)paramView.getTag();
    } 
    klx klx = this.b.get(paramInt);
    if (klx.a() != null && klx.a().booleanValue()) {
      ViewGroup.LayoutParams layoutParams = knc.a(knc).getLayoutParams();
      layoutParams.width = -1;
      layoutParams.height = -2;
      knc.b(knc).setVisibility(0);
      knc.b(knc).setVisibility(8);
      knc.c(knc).setVisibility(8);
      knc.a(knc).setLayoutParams(layoutParams);
      knc.a(knc).setLines(3);
      knc.a(knc).setText(klx.f());
      knc.d(knc).setVisibility(8);
      return paramView;
    } 
    knc.b(knc).setVisibility(0);
    knc.c(knc).setVisibility(0);
    knc.a(knc).setVisibility(0);
    knc.d(knc).setVisibility(0);
    knc.a(knc).setVisibility(0);
    knc.a(knc).setText(klx.f().replaceAll("ˆ\\s+", ""));
    knc.b(knc).setText(klx.e());
    knc.c(knc).setText(naj.f(klx.h()));
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\knb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */