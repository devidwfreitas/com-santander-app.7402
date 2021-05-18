import android.content.Intent;
import android.view.View;
import com.santander.app.habilitacaointernacional.activity.ComprovanteHabilitacaoInternacionalActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class iml implements View.OnClickListener {
  public iml(ComprovanteHabilitacaoInternacionalActivity paramComprovanteHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    this.a.startActivity((new Intent(this.a.getApplicationContext(), HomeLogadaActivity.class)).addFlags(67108864));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iml.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */