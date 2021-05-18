import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

class iiu implements View.OnClickListener {
  iiu(iis paramiis) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a.getActivity(), HomeLogadaActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iiu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */