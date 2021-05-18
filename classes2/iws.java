import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

class iws implements View.OnClickListener {
  iws(iwq paramiwq) {}
  
  public void onClick(View paramView) {
    paramView.getContext().getSharedPreferences("qrPreferences", 0).edit().putBoolean(mzr.n(), false).commit();
    if (miq.C().f().y().a().equals(naz.CSO_TRANSACIONAL.getValue()))
      miq.C().f().y().g(Boolean.valueOf(true)); 
    iwq.b(this.a).startActivity(new Intent((Context)iwq.b(this.a), HomeLogadaActivity.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iws.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */