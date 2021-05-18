import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.View;

class gqf implements View.OnClickListener {
  gqf(gqb paramgqb, Activity paramActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent("android.intent.action.VIEW");
    intent.setFlags(335544320);
    intent.setData(Uri.parse("https://www.webcasas.com.br"));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gqf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */