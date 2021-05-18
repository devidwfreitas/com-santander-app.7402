import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;

public class gtj extends Dialog {
  private Context a;
  
  private gtn b;
  
  public gtj(@NonNull Context paramContext, gtn paramgtn) {
    super(paramContext, 2131427876);
    this.a = paramContext;
    this.b = paramgtn;
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130968903);
    Window window = getWindow();
    if (window != null) {
      window.setBackgroundDrawable((Drawable)new ColorDrawable(0));
      (window.getAttributes()).windowAnimations = 2131427870;
      setCancelable(false);
    } 
    ((Button)findViewById(2131756711)).setOnClickListener(new gtk(this));
    ((FrameLayout)findViewById(2131756708)).setOnClickListener(new gtl(this));
    ((FrameLayout)findViewById(2131756710)).setOnClickListener(new gtm(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gtj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */