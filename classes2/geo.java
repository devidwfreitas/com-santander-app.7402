import android.content.Intent;
import android.net.Uri;
import android.view.View;

class geo implements View.OnClickListener {
  geo(gen paramgen) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent("android.intent.action.VIEW");
    intent.setFlags(335544320);
    intent.setData(Uri.parse("https://santander.custhelp.com/app/chat/chat_santander/p/197"));
    gej.b(this.a.a).startActivity(intent);
    gej.c(this.a.a).dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\geo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */