import android.app.Dialog;
import android.content.Context;
import android.view.View;
import com.santander.app.emprestimo.chat.presentation.EmpChatActivity;

public class hnr implements View.OnClickListener {
  public hnr(EmpChatActivity paramEmpChatActivity, Dialog paramDialog, String paramString) {}
  
  public void onClick(View paramView) {
    if (EmpChatActivity.b(this.c) != null && EmpChatActivity.c(this.c) != null)
      frq.d(EmpChatActivity.b(this.c), EmpChatActivity.c(this.c)); 
    this.a.dismiss();
    myo.b((Context)this.c.i, this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hnr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */