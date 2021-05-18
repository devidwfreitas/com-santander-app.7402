import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ListAdapter;
import com.santander.app.habilitacaointernacional.activity.ExcluirHabilitacaoInternacionalActivity;
import java.util.ArrayList;

public class inb extends AsyncTask<Void, Void, ioh> {
  public inb(ExcluirHabilitacaoInternacionalActivity paramExcluirHabilitacaoInternacionalActivity) {}
  
  protected ioh a(Void... paramVarArgs) {
    try {
      String str = ((ghu)this.a.v.f().s().e().get(ExcluirHabilitacaoInternacionalActivity.a(this.a).a())).H();
      return hat.t().a(str);
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(ioh paramioh) {
    ArrayList<ioi> arrayList;
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    Log.d("Santander:", "GetConsultaViagensTask response: " + paramioh.d());
    new inc(this);
    if (paramioh != null) {
      if (paramioh.a().size() > 0) {
        new ioh();
        this.a.v.f().i(paramioh.e());
        arrayList = ExcluirHabilitacaoInternacionalActivity.a(this.a, paramioh.a());
        ExcluirHabilitacaoInternacionalActivity.a(this.a, new inu(arrayList, (Context)this.a));
        ExcluirHabilitacaoInternacionalActivity.f(this.a).setAdapter((ListAdapter)ExcluirHabilitacaoInternacionalActivity.e(this.a));
        ExcluirHabilitacaoInternacionalActivity.b(this.a, arrayList);
        ExcluirHabilitacaoInternacionalActivity.d(this.a);
        ExcluirHabilitacaoInternacionalActivity.g(this.a).setVisibility(0);
        return;
      } 
      if (arrayList.b().equals("0") && arrayList.a().size() == 0) {
        ExcluirHabilitacaoInternacionalActivity.a(this.a, 1);
        arrayList = ExcluirHabilitacaoInternacionalActivity.a(this.a, arrayList.a());
        ExcluirHabilitacaoInternacionalActivity.a(this.a, new inu(arrayList, (Context)this.a));
        ExcluirHabilitacaoInternacionalActivity.f(this.a).setAdapter((ListAdapter)ExcluirHabilitacaoInternacionalActivity.e(this.a));
        ExcluirHabilitacaoInternacionalActivity.g(this.a).setVisibility(8);
        return;
      } 
      hat.d().a(ExcluirHabilitacaoInternacionalActivity.c(this.a), (fvu)arrayList, true, false);
      ExcluirHabilitacaoInternacionalActivity.g(this.a).setVisibility(8);
      return;
    } 
    hat.d().a(ExcluirHabilitacaoInternacionalActivity.c(this.a), (fvu)arrayList, true, false);
    ExcluirHabilitacaoInternacionalActivity.g(this.a).setVisibility(8);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(ExcluirHabilitacaoInternacionalActivity.c(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\inb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */