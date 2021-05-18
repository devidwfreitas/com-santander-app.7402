import android.content.Context;
import android.content.Intent;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.emprestimo.antecipacaoDT.activity.AntecipacaoDTConfirmacaoActivity;
import java.util.ArrayList;

class hhu implements foh {
  hhu(hht paramhht, gvb paramgvb, hiy paramhiy, ArrayList paramArrayList) {}
  
  public void a(Object paramObject) {
    AntecipacaoDTConfirmacaoActivity.a(this.d.a, this.a, this.b, this.c, false);
    paramObject = new Intent((Context)this.d.a, ComprovanteBaseActivity.class);
    paramObject.putExtra("comprovanteBase", this.a);
    this.d.a.startActivity((Intent)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hhu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */