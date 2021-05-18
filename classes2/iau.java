import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Iterator;

public class iau implements iat {
  private hyz a;
  
  private iak b;
  
  public iau(hyz paramhyz, iak paramiak) {
    this.a = paramhyz;
    this.b = paramiak;
  }
  
  LinearLayout a(Context paramContext, gky paramgky) {
    LinearLayout linearLayout = new LinearLayout(paramContext);
    LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(-1, -2);
    linearLayout.setVerticalGravity(16);
    linearLayout.setGravity(17);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)layoutParams1);
    if (paramgky.d()) {
      linearLayout.setOrientation(1);
      linearLayout.setPadding(0, 15, 0, 0);
      ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-2, -2);
      TextView textView3 = new TextView(paramContext);
      textView3.setLayoutParams(layoutParams2);
      textView3.setTypeface(mzu.a(paramContext, 0));
      textView3.setText(paramgky.b());
      TextView textView4 = new TextView(paramContext);
      textView4.setPadding(10, 0, 0, 0);
      textView4.setLayoutParams(layoutParams2);
      textView4.setTypeface(mzu.a(paramContext, 0));
      textView4.setText(paramgky.c());
      linearLayout.addView((View)textView3);
      linearLayout.addView((View)textView4);
      return linearLayout;
    } 
    linearLayout.setPadding(5, 15, 0, 0);
    linearLayout.setOrientation(0);
    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
    TextView textView1 = new TextView(paramContext);
    textView1.setLayoutParams(layoutParams);
    textView1.setTypeface(mzu.a(paramContext, 0));
    textView1.setText(paramgky.b());
    TextView textView2 = new TextView(paramContext);
    textView2.setPadding(10, 0, 0, 0);
    textView2.setLayoutParams(layoutParams);
    textView2.setTypeface(mzu.a(paramContext, 0));
    textView2.setText(paramgky.c());
    linearLayout.addView((View)textView1);
    linearLayout.addView((View)textView2);
    return linearLayout;
  }
  
  public void a() {
    String str = this.b.e();
    myj.a(this.b.c(), this.a.d(), "", str);
  }
  
  public void a(hyz paramhyz) {
    if (paramhyz.a() == null) {
      this.b.b();
      return;
    } 
    Iterator<gky> iterator = paramhyz.a().iterator();
    while (true) {
      if (iterator.hasNext()) {
        gky gky = iterator.next();
        this.b.a(a((Context)this.b.c(), gky));
        continue;
      } 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iau.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */