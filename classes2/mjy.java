import android.app.Dialog;
import android.view.View;
import com.santander.app.sugestaocdb.presentation.SugestaoCDB;

public class mjy implements View.OnClickListener {
  public mjy(SugestaoCDB paramSugestaoCDB, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    this.a.cancel();
    if (SugestaoCDB.c(this.b) != null && SugestaoCDB.c(this.b).isShowing())
      SugestaoCDB.c(this.b).cancel(); 
    SugestaoCDB.a(this.b, mxn.b(this.b.i));
    SugestaoCDB.b(this.b).d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mjy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */