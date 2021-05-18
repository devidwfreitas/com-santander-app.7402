import android.content.Intent;
import android.util.Log;
import android.view.View;
import com.santander.app.dpp.DPPListaProgramadaActivity;

class fov implements View.OnClickListener {
  private int c = this.a;
  
  fov(fou paramfou, int paramInt) {}
  
  public void onClick(View paramView) {
    Log.d("santander", "Onclick item");
    fou.b(this.b).startActivity(new Intent(fou.a(this.b), DPPListaProgramadaActivity.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fov.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */