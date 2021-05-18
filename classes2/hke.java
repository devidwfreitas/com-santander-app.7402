import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;

public class hke extends BaseAdapter {
  private Context a;
  
  private LayoutInflater b;
  
  private List<gkx> c;
  
  public hke(Context paramContext, List<gkx> paramList) {
    this.a = paramContext;
    this.c = paramList;
  }
  
  private View a(View paramView, gky paramgky) {
    if (paramgky.c().equals("R$ 0,00"))
      return null; 
    LinearLayout linearLayout = new LinearLayout(this.a);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
    linearLayout.setPadding(0, 0, 0, 5);
    linearLayout.setOrientation(0);
    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
    TextView textView1 = new TextView(this.a);
    textView1.setLayoutParams(layoutParams);
    textView1.setTypeface(mzu.a(this.a, 1));
    textView1.setText(paramgky.b());
    TextView textView2 = new TextView(this.a);
    textView2.setPadding(10, 0, 0, 0);
    textView2.setLayoutParams(layoutParams);
    textView2.setTypeface(mzu.a(this.a, 0));
    textView2.setText(paramgky.c());
    linearLayout.addView((View)textView1);
    linearLayout.addView((View)textView2);
    return (View)linearLayout;
  }
  
  private void a() {
    mxn.a((Activity)this.a, this.a.getResources().getString(2131298994), this.a.getResources().getString(2131298212), false);
  }
  
  private void b() {
    mxn.a((Activity)this.a, this.a.getResources().getString(2131298993), this.a.getResources().getString(2131298211), false);
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
    View view = paramView;
    if (paramView == null) {
      gkx gkx = this.c.get(paramInt);
      this.b = (LayoutInflater)this.a.getSystemService("layout_inflater");
      paramView = this.b.inflate(2130969265, null);
      LinearLayout linearLayout = (LinearLayout)paramView.findViewById(2131758637);
      ((TextView)paramView.findViewById(2131758632)).setText(gkx.a());
      Iterator<gky> iterator = gkx.c().iterator();
      while (true) {
        view = paramView;
        if (iterator.hasNext()) {
          gky gky = iterator.next();
          if (this.c.indexOf(gkx) == 0) {
            paramView.findViewById(2131758634).setVisibility(8);
            ((ImageView)paramView.findViewById(2131758635)).setImageResource(2130838059);
          } else if (this.c.indexOf(gkx) == getCount() - 1) {
            paramView.findViewById(2131758636).setVisibility(8);
            ((ImageView)paramView.findViewById(2131758635)).setImageResource(2130838052);
          } else {
            ((ImageView)paramView.findViewById(2131758635)).setImageResource(2130838059);
          } 
          view = a(paramView, gky);
          if (view != null)
            linearLayout.addView(view); 
          continue;
        } 
        break;
      } 
    } 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hke.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */