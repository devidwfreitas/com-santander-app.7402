import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.Button;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class gga extends Dialog {
  private Button a;
  
  private Activity b;
  
  private gfl c;
  
  private iex d;
  
  public gga(Activity paramActivity, gfl paramgfl, iex paramiex) {
    super((Context)paramActivity);
    this.b = paramActivity;
    this.c = paramgfl;
    this.d = paramiex;
  }
  
  public void dismiss() {
    super.dismiss();
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    this.d.b();
    Intent intent = new Intent((Context)this.b, HomeLogadaActivity.class);
    this.b.startActivity(intent);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130968937);
    getWindow().setBackgroundDrawable((Drawable)new ColorDrawable(0));
    this.a = (Button)findViewById(2131756827);
    this.a.setOnClickListener(new ggb(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gga.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */