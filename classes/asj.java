import android.content.DialogInterface;
import android.util.Log;
import chat.santander.com.modulochatsantander.view.activities.ChatActivity;

public class asj implements DialogInterface.OnClickListener {
  public asj(ChatActivity paramChatActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (!ase.b(ChatActivity.j().T()) && ase.i(ChatActivity.j().r()) && ChatActivity.a(this.a).a(ChatActivity.j().T())) {
      this.a.a(ChatActivity.a(this.a));
    } else {
      if (ChatActivity.j().Q() != null)
        ChatActivity.j().Q().e(); 
      ChatActivity.j().f(true);
      Log.d("[ChatActivity]", "Action Finish");
      this.a.finish();
    } 
    this.a.i();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\asj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */