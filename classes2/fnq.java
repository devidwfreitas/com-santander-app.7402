import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.santander.app.MinhaConta;
import com.santander.app.homenaologada.presentation.HomeActivity;
import com.santander.app.meuperfil.activity.PrimeiroAcessoBoasVindasActivity;
import java.util.ArrayList;
import java.util.Iterator;

class fnq implements foh {
  fnq(fnp paramfnp, fnx paramfnx, foh paramfoh, Activity paramActivity, Context paramContext) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    fnp.a(this.e).f().a(Boolean.valueOf(false));
    if (MinhaConta.h()) {
      fnp.a(this.e, this.a, (fny)paramObject, this.b);
      return;
    } 
    if (!this.e.f((fny)paramObject)) {
      if (this.e.c((fny)paramObject)) {
        fnp.a(this.e, false);
        mxn.a(this.c, 2130968938);
      } 
      if (this.e.e((fny)paramObject)) {
        fnp.a(this.e, false);
        fnp.a(this.e, 1);
        Intent intent = new Intent((Context)this.c, PrimeiroAcessoBoasVindasActivity.class);
        intent.putExtra("Nome", paramObject.f());
        intent.putExtra("cpf", this.a.a());
        intent.putExtra("selecionaActivity", fnp.b(this.e));
        this.c.startActivity(intent);
      } else if (this.e.d((fny)paramObject)) {
        fnp.a(this.e, false);
        mxn.a(this.c, 2130968940);
      } 
      if (this.e.g((fny)paramObject)) {
        fnp.a(this.e, true);
        ((HomeActivity)this.c).a(false);
        fnp.a(this.e).f().a(Boolean.valueOf(paramObject.d().equals("108")));
      } 
      if (this.e.l((fny)paramObject)) {
        fnp.a(this.e, false);
        mxn.a(this.c, 2130968941);
      } else if (this.e.k((fny)paramObject)) {
        fnp.a(this.e, false);
        mxn.a(this.c, 2130968942);
      } else if (this.e.h((fny)paramObject)) {
        fnp.a(this.e, false);
        this.e.a(this.c, paramObject.f(), this.a.a());
      } else if (this.e.b((fny)paramObject)) {
        Iterator<fyl> iterator = paramObject.h().iterator();
        ArrayList<String> arrayList = new ArrayList();
        fnp.a(this.e, false);
        fnp.a(this.e, 2);
        ((HomeActivity)this.c).a(true);
        fwr fwr = new fwr();
        fwr.j(paramObject.f());
        fwr.p(paramObject.c());
        this.e.a(fwr, this.a.a());
        while (iterator.hasNext()) {
          fyl fyl = iterator.next();
          String str1 = fyl.b();
          String str2 = fyl.a();
          arrayList.add(str1 + "|" + str2);
        } 
        Intent intent = new Intent((Context)this.c, PrimeiroAcessoBoasVindasActivity.class);
        intent.putExtra("Nome", paramObject.f());
        intent.putExtra("cpf", this.a.a());
        intent.putExtra("selecionaActivity", fnp.b(this.e));
        intent.putExtra("listaContas", arrayList);
        intent.putExtra("codRetorno", paramObject.d());
        this.c.startActivity(intent);
      } else if (this.e.a((fny)paramObject)) {
        fnp.a(this.e, false);
        fnp.a(this.e, 3);
        ((HomeActivity)this.c).a(true);
        fwr fwr = new fwr();
        fwr.j(paramObject.f());
        fwr.p(paramObject.c());
        this.e.a(fwr, this.a.a());
        Intent intent = new Intent((Context)this.c, PrimeiroAcessoBoasVindasActivity.class);
        intent.putExtra("Nome", paramObject.f());
        intent.putExtra("cpf", this.a.a());
        intent.putExtra("selecionaActivity", fnp.b(this.e));
        intent.putExtra("codRetorno", paramObject.d());
        this.c.startActivity(intent);
      } 
      if (this.e.j((fny)paramObject)) {
        fnp.a(this.e, true);
        ((HomeActivity)this.c).a(true);
      } else if (this.e.i((fny)paramObject)) {
        fnp.a(this.e, false);
        Intent intent = new Intent((Context)this.c, PrimeiroAcessoBoasVindasActivity.class);
        this.d.startActivity(intent);
      } 
      if (fnp.c(this.e)) {
        boolean bool;
        fwr fwr = new fwr();
        fwr.j(paramObject.f());
        fwr.p(paramObject.c());
        this.e.a(fwr, this.a.a());
        miq miq = miq.C();
        if (paramObject.i() == null || !"S".equalsIgnoreCase(paramObject.i())) {
          bool = false;
        } else {
          bool = true;
        } 
        miq.j(bool);
      } 
      this.b.a(Boolean.valueOf(true));
      return;
    } 
    mxn.d(this.c, paramObject.b());
    this.b.a(Boolean.valueOf(false));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */