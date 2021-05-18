import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import chat.santander.com.modulochatsantander.view.activities.ChatActivity;

public class asv implements TextWatcher {
  public asv(ChatActivity paramChatActivity, Handler paramHandler, Runnable paramRunnable) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    this.a.removeCallbacks(this.b);
    if (ChatActivity.f(this.c).getText().toString().trim().length() > 0) {
      this.a.postDelayed(this.b, 2000L);
      if (!ChatActivity.e(this.c)) {
        ChatActivity.g(this.c).setImageResource(aph.ico_squadchat_send);
        ChatActivity.a(this.c, true);
        ChatActivity.b(this.c, ChatActivity.e(this.c));
      } 
      return;
    } 
    ChatActivity.g(this.c).setImageResource(aph.ico_squadchat_send_enable);
    ChatActivity.a(this.c, false);
    ChatActivity.b(this.c, ChatActivity.e(this.c));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\asv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */