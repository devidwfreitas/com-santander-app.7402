import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import java.util.Iterator;

public class knf implements kne {
  private kkx a;
  
  private kmr b;
  
  public knf(kkx paramkkx, kmr paramkmr) {
    this.a = paramkkx;
    this.b = paramkmr;
  }
  
  public LinearLayout a(Context paramContext, gky paramgky) {
    LinearLayout linearLayout = new LinearLayout(paramContext);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
    if (paramgky.d()) {
      linearLayout.setOrientation(1);
      linearLayout.setPadding(0, 15, 0, 0);
      ViewGroup.LayoutParams layoutParams1 = new ViewGroup.LayoutParams(-2, -2);
      TextView textView3 = new TextView(paramContext);
      textView3.setLayoutParams(layoutParams1);
      textView3.setTypeface(mzu.a(paramContext, 1));
      textView3.setText(paramgky.b());
      TextView textView4 = new TextView(paramContext);
      textView4.setPadding(10, 0, 0, 0);
      textView4.setLayoutParams(layoutParams1);
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
    textView1.setTypeface(mzu.a(paramContext, 1));
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
  
  public LinearLayout a(Context paramContext, klr paramklr) {
    LinearLayout linearLayout = new LinearLayout(paramContext);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
    int i = 15;
    if (Integer.valueOf(paramklr.d()).intValue() > 0)
      i = Integer.valueOf(paramklr.d()).intValue() * 25; 
    linearLayout.setPadding(5, i, 0, 0);
    linearLayout.setOrientation(0);
    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
    TextView textView1 = new TextView(paramContext);
    textView1.setLayoutParams(layoutParams);
    textView1.setTypeface(mzu.a(paramContext, 1));
    textView1.setText(paramklr.a());
    TextView textView2 = new TextView(paramContext);
    textView2.setPadding(10, 0, 0, 0);
    textView2.setLayoutParams(layoutParams);
    textView2.setTypeface(mzu.a(paramContext, 0));
    textView2.setText(paramklr.b());
    linearLayout.addView((View)textView1);
    linearLayout.addView((View)textView2);
    return linearLayout;
  }
  
  public void a() {
    Intent intent = new Intent((Context)this.b.i(), HomeLogadaActivity.class);
    this.b.i().startActivity(intent);
  }
  
  public void a(kkx paramkkx) {
    if (paramkkx.b() == null) {
      this.b.d();
      return;
    } 
    if (paramkkx.o() != null) {
      Iterator<klr> iterator1 = paramkkx.o().iterator();
      int i = 0;
      while (true) {
        if (iterator1.hasNext()) {
          klr klr = iterator1.next();
          if (i && !klr.c().equals("I") && i != paramkkx.o().size() - 1)
            this.b.a(a((Context)this.b.i(), klr)); 
          i++;
          continue;
        } 
        return;
      } 
    } 
    Iterator<gky> iterator = paramkkx.b().iterator();
    while (true) {
      if (iterator.hasNext()) {
        gky gky = iterator.next();
        this.b.a(a((Context)this.b.i(), gky));
        continue;
      } 
      return;
    } 
  }
  
  public void b() {
    String str = this.b.g();
    myj.a(this.b.i(), this.a.e(), "", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\knf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */