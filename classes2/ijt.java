import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

class ijt implements View.OnClickListener {
  ijt(ijr paramijr) {}
  
  public void onClick(View paramView) {
    if (ijr.a(this.a).d()) {
      this.a.getActivity().onBackPressed();
      return;
    } 
    Intent intent = new Intent((Context)this.a.getActivity(), HomeLogadaActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ijt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */