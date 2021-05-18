import android.view.View;
import android.widget.ImageView;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;

public class guv implements View.OnClickListener {
  public guv(ComprovanteBaseActivity paramComprovanteBaseActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Transferencia_Acao", "Informativo2");
    if (ComprovanteBaseActivity.c(this.a).isShown()) {
      ((ImageView)paramView).setImageResource(2130838907);
      ComprovanteBaseActivity.c(this.a).setVisibility(8);
      return;
    } 
    ((ImageView)paramView).setImageResource(2130838908);
    ComprovanteBaseActivity.c(this.a).setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\guv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */