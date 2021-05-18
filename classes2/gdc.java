import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;

public class gdc extends Dialog {
  private Activity a;
  
  private gdf b;
  
  private Button c;
  
  private Button d;
  
  private EditText e;
  
  public gdc(Activity paramActivity, gdf paramgdf) {
    super((Context)paramActivity);
    this.a = paramActivity;
    this.b = paramgdf;
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130968902);
    Window window = getWindow();
    window.setBackgroundDrawable((Drawable)new ColorDrawable(0));
    WindowManager.LayoutParams layoutParams = window.getAttributes();
    layoutParams.gravity = 17;
    layoutParams.width = -1;
    layoutParams.height = -2;
    this.e = (EditText)findViewById(2131756703);
    this.e.addTextChangedListener(nar.a(this.e));
    this.c = (Button)findViewById(2131756704);
    this.c.setOnClickListener(new gdd(this));
    this.d = (Button)findViewById(2131756705);
    this.d.setOnClickListener(new gde(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gdc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */