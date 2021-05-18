import android.content.DialogInterface;
import chat.santander.com.modulochatsantander.view.activities.ChatActivity;

public class asn implements DialogInterface.OnClickListener {
  public asn(ChatActivity paramChatActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (ChatActivity.j().Q() != null)
      ChatActivity.j().Q().d(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\asn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */