import android.os.AsyncTask;
import android.util.Log;
import com.ca.android.app.CaMDOProgressBar;
import com.santander.app.Rendafixa_posicaoconsolidadaActivity;
import java.util.Iterator;

public class fne extends AsyncTask<Void, Void, fwb> {
  private boolean b = true;
  
  private fne(Rendafixa_posicaoconsolidadaActivity paramRendafixa_posicaoconsolidadaActivity) {}
  
  protected fwb a(Void... paramVarArgs) {
    try {
      return hat.e().d();
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(fwb paramfwb) {
    Integer integer;
    this.b = false;
    if (paramfwb != null && !paramfwb.hasError()) {
      hau.a().a(paramfwb);
      Integer integer1 = Integer.valueOf(0);
      Integer integer2 = integer1;
      if (paramfwb.f() != null) {
        integer2 = integer1;
        if (!paramfwb.f().isEmpty()) {
          Iterator<fwj> iterator = paramfwb.f().iterator();
          integer = integer1;
          while (iterator.hasNext()) {
            fwj fwj = iterator.next();
            try {
              int i = integer.intValue();
              int j = Integer.valueOf(fwj.f()).intValue();
              integer = Integer.valueOf(j + i);
            } catch (Exception exception) {
              Log.e("Error", exception.getMessage());
            } 
          } 
          integer2 = integer;
        } 
      } 
      hau.a().j().f(integer2.toString());
      Rendafixa_posicaoconsolidadaActivity.b(this.a);
      CaMDOProgressBar.setVisibility(Rendafixa_posicaoconsolidadaActivity.a(this.a), 8);
      return;
    } 
    if (integer != null && integer.hasError()) {
      hau.a().a(Boolean.valueOf(true));
      hau.a().a(new fwb());
      hat.d().a(Rendafixa_posicaoconsolidadaActivity.c(this.a), (fvu)integer, false, false);
      return;
    } 
    if (integer == null) {
      hat.d().a(Rendafixa_posicaoconsolidadaActivity.c(this.a), (fvu)integer, true, false);
      return;
    } 
  }
  
  public void onPreExecute() {
    if (this.b)
      CaMDOProgressBar.setVisibility(Rendafixa_posicaoconsolidadaActivity.a(this.a), 0); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fne.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */