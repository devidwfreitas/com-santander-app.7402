import android.view.View;
import chat.santander.com.modulochatsantander.view.activities.ChatActivity;

public class aso implements View.OnLayoutChangeListener {
  public aso(ChatActivity paramChatActivity) {}
  
  public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8) {
    if (paramInt4 < paramInt8)
      ChatActivity.c(this.a).postDelayed(new asp(this), 100L); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aso.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */