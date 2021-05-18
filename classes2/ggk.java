import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

public class ggk implements ggj {
  private Activity a;
  
  private gfu b;
  
  public ggk(gfu paramgfu) {
    this.b = paramgfu;
    this.a = (Activity)paramgfu;
  }
  
  public void a(List<gex> paramList) {
    LinearLayout linearLayout = new LinearLayout((Context)this.a);
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
    linearLayout.setOrientation(1);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    for (gex gex : paramList) {
      int i;
      LinearLayout linearLayout1 = new LinearLayout((Context)this.a);
      LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(-1, -2);
      linearLayout1.setOrientation(1);
      linearLayout1.setLayoutParams((ViewGroup.LayoutParams)layoutParams1);
      linearLayout1.setPadding(0, 0, 0, 12);
      LinearLayout linearLayout2 = new LinearLayout((Context)this.a);
      if (gex.a()) {
        i = 150;
      } else {
        i = 30;
      } 
      linearLayout2.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, i));
      linearLayout2.setGravity(16);
      linearLayout2.setBackgroundColor(this.a.getResources().getColor(2131624200));
      linearLayout1.addView((View)linearLayout2);
      for (gev gev : gex.b()) {
        LinearLayout linearLayout3 = new LinearLayout((Context)this.a);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        linearLayout3.setGravity(16);
        linearLayout3.setOrientation(0);
        linearLayout3.setLayoutParams((ViewGroup.LayoutParams)layoutParams2);
        linearLayout3.setPadding(15, 8, 15, 8);
        LinearLayout linearLayout4 = new LinearLayout((Context)this.a);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        linearLayout4.setGravity(5);
        linearLayout4.setOrientation(0);
        linearLayout4.setLayoutParams((ViewGroup.LayoutParams)layoutParams3);
        linearLayout4.setPadding(15, 8, 15, 8);
        TextView textView1 = new TextView((Context)this.a);
        textView1.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView1.setText(gev.a());
        textView1.setTextSize(14.0F);
        textView1.setTypeface(mzu.a((Context)this.a, 0));
        if (gev.d()) {
          i = this.a.getResources().getColor(2131623937);
        } else {
          i = this.a.getResources().getColor(2131624188);
        } 
        textView1.setTextColor(i);
        TextView textView2 = new TextView((Context)this.a);
        textView2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView2.setText(gev.b());
        textView2.setTextSize(14.0F);
        textView2.setTextColor(this.a.getResources().getColor(2131624188));
        textView2.setTypeface(mzu.a((Context)this.a, 0));
        textView2.setPadding(5, 0, 0, 0);
        linearLayout3.addView((View)textView1);
        linearLayout4.addView((View)textView2);
        linearLayout3.addView((View)linearLayout4);
        if (gev.f()) {
          linearLayout2.addView((View)linearLayout3);
          continue;
        } 
        linearLayout1.addView((View)linearLayout3);
      } 
      linearLayout.addView((View)linearLayout1);
    } 
    this.b.a(linearLayout);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ggk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */