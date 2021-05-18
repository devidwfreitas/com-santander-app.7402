import android.content.Context;
import android.content.Intent;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.emprestimo.antecipacaoIR.activity.AntecipacaoIRConfirmacaoActivity;
import java.util.ArrayList;

class hjh implements foh {
  hjh(hjg paramhjg, gvb paramgvb, hkj paramhkj, ArrayList paramArrayList) {}
  
  public void a(Object paramObject) {
    AntecipacaoIRConfirmacaoActivity.a(this.d.a, this.a, this.b, this.c, false);
    paramObject = new Intent((Context)this.d.a, ComprovanteBaseActivity.class);
    paramObject.putExtra("comprovanteBase", this.a);
    this.d.a.startActivity((Intent)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hjh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */