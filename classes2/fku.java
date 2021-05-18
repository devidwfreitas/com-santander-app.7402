import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.PoupancaResgateActivity;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class fku extends AsyncTask<Void, Void, fts> {
  private fku(PoupancaResgateActivity paramPoupancaResgateActivity) {}
  
  protected fts a(Void... paramVarArgs) {
    try {
      ftl ftl = PoupancaResgateActivity.n(this.a).c().get(PoupancaResgateActivity.m(this.a).a());
      PoupancaResgateActivity.a(this.a, new ftr());
      PoupancaResgateActivity.o(this.a).a(ftl);
      PoupancaResgateActivity.o(this.a).a(naj.p(ftl.f()));
      PoupancaResgateActivity.o(this.a).a(true);
      if (PoupancaResgateActivity.i(this.a).getCurrentItem() == 0) {
        PoupancaResgateActivity.o(this.a).a(false);
        PoupancaResgateActivity.o(this.a).a(naj.l(PoupancaResgateActivity.g(this.a).getText().toString()));
        PoupancaResgateActivity.o(this.a).a(naj.l(PoupancaResgateActivity.g(this.a).getText().toString()));
      } 
      PoupancaResgateActivity.o(this.a).b(PoupancaResgateActivity.c(this.a).b());
      if (PoupancaResgateActivity.b(this.a).a() == 1)
        PoupancaResgateActivity.o(this.a).b(PoupancaResgateActivity.d(this.a).b()); 
      SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
      try {
        String str = simpleDateFormat.format((new SimpleDateFormat("dd/MM/yyyy")).parse(PoupancaResgateActivity.o(this.a).e()));
        PoupancaResgateActivity.o(this.a).b(str);
        str = simpleDateFormat.format(new Date());
        if (!PoupancaResgateActivity.o(this.a).e().equals(str)) {
          PoupancaResgateActivity.o(this.a).b(true);
          hau.a().a(true);
          PoupancaResgateActivity.o(this.a).d(ftl.c().a());
          PoupancaResgateActivity.o(this.a).e(ftl.c().d());
          ftb ftb1 = PoupancaResgateActivity.n(this.a).a(ftl);
          PoupancaResgateActivity.o(this.a).f(ftb1.j());
          PoupancaResgateActivity.o(this.a).g(ftb1.k());
          return hat.j().a(PoupancaResgateActivity.o(this.a));
        } 
      } catch (ParseException parseException) {
        String str = simpleDateFormat.format((new SimpleDateFormat("yyyy-MM-dd")).parse(PoupancaResgateActivity.o(this.a).e()));
        PoupancaResgateActivity.o(this.a).b(str);
        str = simpleDateFormat.format(new Date());
        Log.e("Error", parseException.toString());
        if (!PoupancaResgateActivity.o(this.a).e().equals(str)) {
          PoupancaResgateActivity.o(this.a).b(true);
          hau.a().a(true);
          PoupancaResgateActivity.o(this.a).d(ftl.c().a());
          PoupancaResgateActivity.o(this.a).e(ftl.c().d());
          ftb ftb1 = PoupancaResgateActivity.n(this.a).a(ftl);
          PoupancaResgateActivity.o(this.a).f(ftb1.j());
          PoupancaResgateActivity.o(this.a).g(ftb1.k());
          return hat.j().a(PoupancaResgateActivity.o(this.a));
        } 
      } 
      hau.a().a(false);
      PoupancaResgateActivity.o(this.a).b(false);
      PoupancaResgateActivity.o(this.a).d(ftl.c().a());
      PoupancaResgateActivity.o(this.a).e(ftl.c().d());
      ftb ftb = PoupancaResgateActivity.n(this.a).a(ftl);
      PoupancaResgateActivity.o(this.a).f(ftb.j());
      PoupancaResgateActivity.o(this.a).g(ftb.k());
      return hat.j().a(PoupancaResgateActivity.o(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fts paramfts) {
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    if (paramfts == null) {
      hat.d().a(PoupancaResgateActivity.l(this.a), paramfts, true);
      return;
    } 
    if (paramfts.hasError()) {
      hat.d().a(PoupancaResgateActivity.l(this.a), paramfts, true);
      return;
    } 
    ftl ftl = PoupancaResgateActivity.n(this.a).c().get(PoupancaResgateActivity.m(this.a).a());
    paramfts.l(ftl.c().a());
    paramfts.o(ftl.c().d());
    paramfts.k(PoupancaResgateActivity.o(this.a).i());
    paramfts.n(PoupancaResgateActivity.o(this.a).j());
    PoupancaResgateActivity.o(this.a).d(ftl.c().a());
    PoupancaResgateActivity.o(this.a).e(ftl.c().d());
    PoupancaResgateActivity.a(this.a, paramfts);
    PoupancaResgateActivity.b(this.a, paramfts);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(PoupancaResgateActivity.l(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fku.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */