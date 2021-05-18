import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.idsantander.presentation.IdSantanderEscolhaCelularActivity;

class iwn implements View.OnClickListener {
  iwn(iwm paramiwm) {}
  
  public void onClick(View paramView) {
    iwm.a(this.a).startActivity(new Intent((Context)iwm.a(this.a), IdSantanderEscolhaCelularActivity.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iwn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */