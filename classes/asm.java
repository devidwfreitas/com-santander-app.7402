import android.view.View;
import chat.santander.com.modulochatsantander.view.activities.ChatActivity;

public class asm implements View.OnClickListener {
  public asm(ChatActivity paramChatActivity) {}
  
  public void onClick(View paramView) {
    if (ChatActivity.j().Q() != null)
      ChatActivity.j().Q().k(); 
    ChatActivity.j().f(true);
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\asm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */