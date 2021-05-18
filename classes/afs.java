import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import br.com.santander.modulo.ddav1.view.TitleDetailActivity;

final class afs implements aeh {
  afs(afh paramafh, Dialog paramDialog) {}
  
  public final void a(aeb paramaeb) {
    this.a.dismiss();
    Intent intent = new Intent((Context)afh.a(this.b), TitleDetailActivity.class);
    intent.putExtra("title", paramaeb);
    afh.a(this.b).startActivity(intent);
  }
  
  public final void a(is paramis) {
    this.a.dismiss();
    adh.a().a(afh.a(this.b), afh.a(this.b).getString(adw.erro_retorno_service));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\afs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */