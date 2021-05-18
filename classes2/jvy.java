import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class jvy implements jtg, jvx {
  private jtf a;
  
  private juk b;
  
  private Activity c;
  
  private jsr d;
  
  private ArrayList<gku> e;
  
  public jvy(jsr paramjsr, juk paramjuk) {
    this.b = paramjuk;
    this.c = (Activity)paramjuk;
    this.d = paramjsr;
    this.a = new jth(this.c, this);
    a((Context)this.c);
    c();
  }
  
  private void c() {
    jsw jsw2;
    List<gku> list = null;
    ArrayList<jst> arrayList = new ArrayList();
    Iterator<gku> iterator = this.e.iterator();
    jst jst = null;
    jsw jsw1 = null;
    while (iterator.hasNext()) {
      ArrayList arrayList2;
      jsw jsw3;
      jsw jsw4;
      ArrayList arrayList3;
      gku gku = iterator.next();
      jsw jsw5 = jsw.valueOf(gku.a());
      if (jsw5 != jsw1 || jsw1 == null) {
        if (list != null && !list.isEmpty() && jst != null) {
          jst.a(list);
          arrayList.add(jst);
        } 
        jst = new jst();
        jst.a(jsw5);
        jst.a(gku.b());
        arrayList2 = new ArrayList();
        jsw4 = jsw5;
      } else {
        if (jsw4 != null)
          jsw4.add(gku); 
        ArrayList arrayList5 = arrayList2;
        jsw3 = jsw4;
        arrayList3 = arrayList5;
      } 
      ArrayList arrayList4 = arrayList3;
      jsw2 = jsw3;
      ArrayList arrayList1 = arrayList4;
    } 
    if (jsw2 != null && !jsw2.isEmpty() && jst != null) {
      jst.a((List<gku>)jsw2);
      arrayList.add(jst);
    } 
    this.b.a(arrayList);
  }
  
  public void a() {
    this.b.finish();
  }
  
  public void a(Context paramContext) {
    this.e = new ArrayList<gku>();
    LinearLayout linearLayout = new LinearLayout(paramContext);
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
    linearLayout.setOrientation(1);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    int j = (this.c.getResources().getDisplayMetrics()).widthPixels;
    for (int i = 0; i < this.d.m().size(); i++) {
      gku gku = this.d.m().get(i);
      LinearLayout linearLayout1 = new LinearLayout(paramContext);
      if (gku.a() == null) {
        if (gku.b() != null) {
          LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(-1, -2);
          linearLayout1.setGravity(16);
          linearLayout1.setOrientation(0);
          linearLayout1.setLayoutParams((ViewGroup.LayoutParams)layoutParams1);
          linearLayout1.setPadding(0, 10, 0, 0);
          LinearLayout linearLayout2 = new LinearLayout(paramContext);
          LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
          linearLayout2.setGravity(5);
          linearLayout2.setPadding(j / 100 * 10, 0, 0, 0);
          linearLayout2.setLayoutParams((ViewGroup.LayoutParams)layoutParams2);
          TextView textView1 = new TextView(paramContext);
          textView1.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
          textView1.setText(gku.b());
          textView1.setTextSize(14.0F);
          textView1.setTypeface(mzu.a(paramContext, 0));
          TextView textView2 = new TextView(paramContext);
          textView2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
          textView2.setText(gku.c());
          textView2.setMaxLines(4);
          textView2.setTextSize(14.0F);
          textView2.setTextColor(-16777216);
          textView2.setTypeface(mzu.a(paramContext, 0));
          linearLayout1.addView((View)textView1);
          linearLayout2.addView((View)textView2);
          linearLayout1.addView((View)linearLayout2);
        } 
      } else {
        this.e.add(gku);
      } 
      linearLayout.addView((View)linearLayout1);
    } 
    this.b.a(linearLayout);
  }
  
  public void a(gvb paramgvb) {
    this.b.a(paramgvb);
  }
  
  public void b() {
    this.a.a(this.d);
  }
  
  public void b(gvb paramgvb) {
    this.b.a(paramgvb);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jvy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */