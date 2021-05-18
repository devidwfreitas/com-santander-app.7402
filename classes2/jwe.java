import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

public class jwe implements jwd {
  private Activity a;
  
  private jsr b;
  
  private jve c;
  
  public jwe(Activity paramActivity, jsr paramjsr, jve paramjve) {
    this.a = paramActivity;
    this.b = paramjsr;
    this.c = paramjve;
    this.b = paramjsr;
    a((Context)paramActivity);
  }
  
  private LinearLayout a(gku paramgku, Context paramContext) {
    LinearLayout linearLayout = new LinearLayout(paramContext);
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
    linearLayout.setGravity(16);
    linearLayout.setOrientation(0);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    linearLayout.setPadding(0, 10, 0, 0);
    linearLayout.setBackground(paramContext.getResources().getDrawable(2130837729));
    TextView textView = new TextView(paramContext);
    textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    textView.setText(paramgku.b());
    textView.setTextSize(14.0F);
    textView.setTypeface(mzu.a(paramContext, 1));
    linearLayout.addView((View)textView);
    return linearLayout;
  }
  
  private String a(gku paramgku) {
    String str2 = paramgku.c();
    String str1 = str2;
    if (paramgku.b() != null) {
      str1 = str2;
      if (paramgku.b().trim().equals("CNPJ/CPF")) {
        if (str2 != null && str2.substring(0, 4).equals("0000"))
          return aes.c(str2.substring(4)); 
      } else {
        return str1;
      } 
    } else {
      return str1;
    } 
    str1 = str2;
    if (str2 != null) {
      str1 = str2;
      if (str2.length() == 15)
        return aes.a(str2); 
    } 
    return str1;
  }
  
  public void a(Context paramContext) {
    LinearLayout linearLayout = new LinearLayout(paramContext);
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
    linearLayout.setOrientation(1);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    int j = (this.a.getResources().getDisplayMetrics()).widthPixels;
    jsw jsw = null;
    int i = 0;
    while (true) {
      if (i < this.b.m().size()) {
        boolean bool;
        jsw jsw1;
        LinearLayout linearLayout1;
        gku gku = this.b.m().get(i);
        LinearLayout linearLayout3 = new LinearLayout(paramContext);
        layoutParams = null;
        if (gku.a() != null)
          jsw1 = jsw.valueOf(gku.a()); 
        if (jsw1 != null && jsw1 != jsw) {
          linearLayout2 = a(gku, paramContext);
          bool = true;
        } else {
          bool = false;
          linearLayout1 = linearLayout2;
          linearLayout2 = linearLayout3;
        } 
        if (!bool) {
          LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(-1, -2);
          linearLayout2.setGravity(16);
          linearLayout2.setOrientation(0);
          linearLayout2.setLayoutParams((ViewGroup.LayoutParams)layoutParams1);
          linearLayout2.setPadding(0, 10, 0, 0);
          LinearLayout linearLayout4 = new LinearLayout(paramContext);
          LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
          linearLayout4.setGravity(5);
          linearLayout4.setPadding(j / 100 * 10, 0, 0, 0);
          linearLayout4.setLayoutParams((ViewGroup.LayoutParams)layoutParams2);
          TextView textView1 = new TextView(paramContext);
          textView1.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
          textView1.setText(gku.b());
          textView1.setTextSize(14.0F);
          textView1.setTypeface(mzu.a(paramContext, 0));
          TextView textView2 = new TextView(paramContext);
          textView2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
          textView2.setText(a(gku));
          textView2.setMaxLines(4);
          textView2.setTextSize(14.0F);
          textView2.setTextColor(-16777216);
          textView2.setTypeface(mzu.a(paramContext, 0));
          linearLayout2.addView((View)textView1);
          linearLayout4.addView((View)textView2);
          linearLayout2.addView((View)linearLayout4);
        } 
        linearLayout.addView((View)linearLayout2);
        i++;
        LinearLayout linearLayout2 = linearLayout1;
        continue;
      } 
      this.c.a(linearLayout);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jwe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */