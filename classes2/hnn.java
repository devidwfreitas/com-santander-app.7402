import android.content.Context;
import android.content.DialogInterface;
import com.santander.app.emprestimo.chat.ChatV2Activity;

public class hnn implements DialogInterface.OnClickListener {
  public hnn(ChatV2Activity paramChatV2Activity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (paramInt == -1) {
      ChatV2Activity.b(this.a);
      myo.b((Context)this.a, hno.f(ChatV2Activity.a()));
      return;
    } 
    ChatV2Activity.c(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hnn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */