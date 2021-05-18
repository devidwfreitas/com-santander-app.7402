import android.app.Activity;
import android.view.View;
import com.santander.app.habilitacaointernacional.activity.ComprovanteHabilitacaoInternacionalActivity;

public class imm implements View.OnClickListener {
  public imm(ComprovanteHabilitacaoInternacionalActivity paramComprovanteHabilitacaoInternacionalActivity) {}
  
  public void onClick(View paramView) {
    ComprovanteHabilitacaoInternacionalActivity.a(this.a).setVisibility(8);
    ComprovanteHabilitacaoInternacionalActivity.b(this.a).setVisibility(8);
    String str = ComprovanteHabilitacaoInternacionalActivity.c(this.a).b();
    ComprovanteHabilitacaoInternacionalActivity.a(this.a).setVisibility(0);
    ComprovanteHabilitacaoInternacionalActivity.b(this.a).setVisibility(0);
    myj.a((Activity)ComprovanteHabilitacaoInternacionalActivity.c(this.a), "", "", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */