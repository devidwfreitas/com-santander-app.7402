import android.app.Activity;
import android.view.View;
import chat.santander.com.modulochatsantander.view.activities.ChatActivity;

public class asq implements View.OnClickListener {
  public asq(ChatActivity paramChatActivity) {}
  
  public void onClick(View paramView) {
    if (ChatActivity.j().Q() != null)
      ChatActivity.j().Q().h(); 
    ase.a((Activity)this.a, this.a.getString(apo.chat_disconnected_title), this.a.getString(apo.chat_disconnected_message), this.a.getString(apo.button_reconnect_squadchat), new asr(this), new ass(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\asq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */