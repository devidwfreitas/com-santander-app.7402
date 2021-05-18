import android.content.Intent;
import android.net.Uri;
import android.view.View;

class gwu implements View.OnClickListener {
  gwu(gwt paramgwt, gta paramgta) {}
  
  public void onClick(View paramView) {
    gwt.a(this.b).startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.a.b())));
    gwt.b(this.b).dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */