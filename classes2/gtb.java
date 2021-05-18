import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;

public class gtb extends Dialog {
  private Activity a;
  
  private gti b;
  
  private Button c;
  
  private LinearLayout d;
  
  private ArrayList<gth> e;
  
  public gtb(Activity paramActivity, gti paramgti, ArrayList<gth> paramArrayList) {
    super((Context)paramActivity);
    this.a = paramActivity;
    this.b = paramgti;
    this.e = paramArrayList;
  }
  
  private LinearLayout a(gth paramgth) {
    LinearLayout linearLayout = new LinearLayout((Context)this.a);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
    linearLayout.setOrientation(0);
    linearLayout.setPadding(0, 15, 0, 0);
    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
    TextView textView = new TextView((Context)this.a);
    textView.setLayoutParams(layoutParams);
    textView.setTypeface(mzu.a((Context)this.a, 0));
    textView.setText(paramgth.c());
    textView.setTextSize(paramgth.a());
    if (paramgth.b().booleanValue()) {
      linearLayout.setGravity(1);
      textView.setTextAlignment(4);
    } 
    if (paramgth.d().booleanValue())
      textView.setTypeface(null, 1); 
    linearLayout.addView((View)textView);
    return linearLayout;
  }
  
  private void a() {
    if (this.e != null)
      for (gth gth : this.e)
        this.d.addView((View)a(gth));  
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130968900);
    Window window = getWindow();
    window.setBackgroundDrawable((Drawable)new ColorDrawable(0));
    WindowManager.LayoutParams layoutParams = window.getAttributes();
    setCancelable(false);
    layoutParams.gravity = 17;
    layoutParams.width = -1;
    layoutParams.height = -2;
    this.c = (Button)findViewById(2131756700);
    this.c.setOnClickListener(new gtc(this));
    this.d = (LinearLayout)findViewById(2131756699);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gtb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */