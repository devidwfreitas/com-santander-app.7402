import android.content.Context;
import android.content.Intent;
import com.santander.app.emprestimo.chat.ChatV2Activity;

public class hnp {
  private Context a;
  
  private hno b;
  
  private hnp(Context paramContext, hno paramhno) {
    this.a = paramContext;
    this.b = paramhno;
  }
  
  public void a() {
    Intent intent = new Intent(this.a, ChatV2Activity.class);
    ChatV2Activity.a(this.b);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hnp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */