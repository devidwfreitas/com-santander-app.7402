import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.Button;

public class fsk extends Dialog {
  private Button a;
  
  private Button b;
  
  private Button c;
  
  private Activity d;
  
  private fso e;
  
  public fsk(Activity paramActivity, fso paramfso) {
    super((Context)paramActivity);
    this.d = paramActivity;
    this.e = paramfso;
  }
  
  public void dismiss() {
    super.dismiss();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130968951);
    getWindow().setBackgroundDrawable((Drawable)new ColorDrawable(0));
    this.a = (Button)findViewById(2131756874);
    this.b = (Button)findViewById(2131756875);
    this.c = (Button)findViewById(2131756876);
    this.a.setOnClickListener(new fsl(this));
    this.b.setOnClickListener(new fsm(this));
    this.c.setOnClickListener(new fsn(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fsk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */