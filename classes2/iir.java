import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

class iir implements View.OnClickListener {
  iir(iiq paramiiq) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a.getActivity(), HomeLogadaActivity.class);
    intent.setFlags(67108864);
    this.a.getActivity().startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iir.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */