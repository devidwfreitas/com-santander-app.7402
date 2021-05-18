import android.util.Log;
import android.view.View;
import chat.santander.com.modulochatsantander.view.activities.ChatActivity;

public class asx implements View.OnClickListener {
  public asx(ChatActivity paramChatActivity) {}
  
  public void onClick(View paramView) {
    String str = ChatActivity.f(this.a).getEditableText().toString().trim();
    if (ase.f(str)) {
      Log.d("[ChatActivity]", " isTextValidToSend true");
      ChatActivity.a(this.a, str, null);
      ChatActivity.f(this.a).setText("");
      return;
    } 
    Log.d("[ChatActivity]", " isTextValidToSend false");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\asx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */