import android.app.Dialog;
import android.view.View;
import com.santander.app.emprestimo.chat.presentation.EmpChatActivity;

public class hns implements View.OnClickListener {
  public hns(EmpChatActivity paramEmpChatActivity, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    if (EmpChatActivity.b(this.b) != null && EmpChatActivity.d(this.b) != null)
      frq.d(EmpChatActivity.b(this.b), EmpChatActivity.d(this.b)); 
    this.a.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hns.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */