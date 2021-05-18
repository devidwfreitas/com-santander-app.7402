import android.content.Context;
import android.content.Intent;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.meuperfil.activity.MeuPerfilSolicitarCartaoActivity;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class jpn implements jrn {
  public jpn(MeuPerfilSolicitarCartaoActivity paramMeuPerfilSolicitarCartaoActivity) {}
  
  public void a(Object paramObject) {
    jqj jqj = (jqj)paramObject;
    if (jqj.a().equals("0")) {
      SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy - HH:mm");
      Date date = new Date();
      paramObject = new gvb();
      paramObject.c("Cartão de Segurança On-Line");
      paramObject.g("Solicitação do Cartão de Segurança");
      paramObject.d("Solicitação efetuada com sucesso");
      paramObject.e(jqj.k());
      paramObject.f(simpleDateFormat.format(date));
      paramObject.d(false);
      Intent intent = new Intent((Context)this.a, ComprovanteBaseActivity.class);
      intent.putExtra("comprovanteBase", (Serializable)paramObject);
      this.a.startActivity(intent);
      return;
    } 
    this.a.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jpn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */