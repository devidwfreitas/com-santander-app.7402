import android.app.Activity;
import android.content.Context;
import br.com.santander.dynamicauth.interfaces.DynamicAuthCallBack;
import br.com.santander.dynamicauth.models.DynamicAuthResponse;
import com.santander.app.common.OSGModel;
import com.santander.app.components.model.ListValueString;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class mmi implements mmg {
  private Activity a;
  
  private mmh b;
  
  private mqn c;
  
  private mqc d;
  
  private mip e;
  
  private DynamicAuthCallBack f;
  
  public mmi(Activity paramActivity, mmh parammmh) {
    this.a = paramActivity;
    this.b = parammmh;
    this.c = new mqn(paramActivity);
    this.e = (mip)miq.C();
  }
  
  private gvb a(mlo parammlo, mlp parammlp) {
    gvb gvb = new gvb();
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    (new fsg()).a((Context)this.a);
    if (parammlo.f().equalsIgnoreCase("doc"))
      gvb.i("Transf.Doc.Suc.end"); 
    if (parammlo.f().equalsIgnoreCase("ted"))
      gvb.i("Transf.Ted.Suc.end"); 
    if (parammlo.f().equalsIgnoreCase("tef"))
      gvb.i("Transf.EntreContas.Suc.end"); 
    gvb.j("Transf.Share");
    gvb.b(d(parammlo));
    gvb.c("Transferência");
    gvb.d(false);
    gvb.f(gpl.a(new Date(), "dd/MM/yyyy HH:mm:ss"));
    gvb.e(parammlp.a());
    if (parammlo.f().equalsIgnoreCase("tef")) {
      str = "Transferência entre contas";
    } else {
      str = parammlo.f();
    } 
    if (parammlo.h()) {
      gvb.d(str + " " + this.a.getString(2131299081));
    } else if (parammlo.i()) {
      gvb.d(str + " " + this.a.getString(2131299082));
    } else {
      gvb.d(str + " " + this.a.getString(2131299083));
    } 
    gvb.g("Comprovante - " + gvb.j());
    hashMap.put("Transferencia_Referoper", parammlo.l());
    hashMap.put("Transferencia_Valor", Double.valueOf(Double.parseDouble(parammlo.d().replace("R$", "").replace(".", "").replace(",", "."))));
    hashMap.put("Transferencia_Tipo", parammlo.f());
    if (parammlo.b() != null) {
      hashMap.put("Transferencia_BancoDestino", parammlo.b().i());
    } else {
      hashMap.put("Transferencia_BancoDestino", parammlo.c().l());
    } 
    if (parammlo.i()) {
      str = "Sim";
    } else {
      str = "Nao";
    } 
    hashMap.put("Transferencia_ProgramarMensal", str);
    if (!"".equals(parammlo.j())) {
      str = parammlo.j();
      hashMap.put("Transferencia_ProgramarNumMeses", str);
      hashMap.put("Transferencia_DataEfetivacao", nak.a(parammlo.g(), "yyyyMMdd", "dd/MM/yyyy"));
      gvb.g(true);
      gvb.a((Map)hashMap);
      return gvb;
    } 
    String str = "0";
    hashMap.put("Transferencia_ProgramarNumMeses", str);
    hashMap.put("Transferencia_DataEfetivacao", nak.a(parammlo.g(), "yyyyMMdd", "dd/MM/yyyy"));
    gvb.g(true);
    gvb.a((Map)hashMap);
    return gvb;
  }
  
  private gvb a(mlp parammlp) {
    gvb gvb = new gvb();
    gvb.c("Transferência");
    gvb.f(gpl.a(new Date(), "dd/MM/yyyy HH:mm:ss"));
    gvb.e("");
    gvb.i("");
    gvb.e(true);
    gvb.d(false);
    gvb.b(parammlp.getMensagemErro());
    return gvb;
  }
  
  private iq a(DynamicAuthResponse paramDynamicAuthResponse, mlo parammlo) {
    String str4 = mwz.a();
    String str2 = "";
    String str3 = "";
    mln mln = new mln();
    if (str4 != null && !str4.isEmpty())
      mln.h(str4); 
    mln.a((new mzk(this.a)).a());
    mln.i(String.valueOf(paramDynamicAuthResponse.getData()));
    try {
      JSONObject jSONObject = new JSONObject(mys.b().b(mln));
      String str = nab.a().b(jSONObject.toString());
      str2 = str;
    } catch (Exception exception) {}
    String str1 = parammlo.f().toUpperCase();
    byte b = -1;
    switch (str1.hashCode()) {
      default:
        switch (b) {
          default:
            str1 = str3;
            return gnz.a().a(str1, im.POST, str2, true);
          case 0:
            str1 = "transfer/v1/ted/confirm";
            return gnz.a().a(str1, im.POST, str2, true);
          case 1:
            str1 = "transfer/v1/doc/confirm";
            return gnz.a().a(str1, im.POST, str2, true);
          case 2:
            break;
        } 
        break;
      case 82931:
        if (str1.equals("TED"))
          b = 0; 
      case 67864:
        if (str1.equals("DOC"))
          b = 1; 
      case 82933:
        if (str1.equals("TEF"))
          b = 2; 
    } 
    str1 = "transfer/v1/santander/confirm";
    return gnz.a().a(str1, im.POST, str2, true);
  }
  
  private void a(HashMap<String, ListValueString> paramHashMap) {
    mzz.a((Context)this.a, OSGModel.getOSGParametersModel(paramHashMap), this.f);
  }
  
  private gvb b(mlo parammlo, mlp parammlp) {
    String str2;
    gvb gvb = new gvb();
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    gvb.b(new ArrayList<gky>());
    for (gku gku : parammlp.h())
      gvb.h().add(new gky(gku.b(), gku.c())); 
    gvb.c("Transferência");
    gvb.d(false);
    gvb.f(parammlp.getDataHoraTransacao());
    gvb.e(parammlp.getAutenticacao());
    if (parammlo.f().equalsIgnoreCase("tef")) {
      str2 = "Transferência entre contas";
    } else {
      str2 = parammlo.f();
    } 
    if (parammlo.h()) {
      str1 = this.a.getString(2131299081);
    } else if (parammlo.i()) {
      str1 = this.a.getString(2131299082);
    } else {
      str1 = this.a.getString(2131299083);
    } 
    gvb.d(str2 + " " + str1);
    gvb.g("Comprovante - " + gvb.j());
    hashMap.put("Transferencia_Referoper", parammlo.l());
    hashMap.put("Transferencia_Valor", Double.valueOf(Double.parseDouble(parammlo.d().replace("R$", "").replace(".", "").replace(",", "."))));
    hashMap.put("Transferencia_Tipo", parammlo.f());
    if (parammlo.b() != null) {
      hashMap.put("Transferencia_BancoDestino", parammlo.b().i());
    } else {
      hashMap.put("Transferencia_BancoDestino", parammlo.c().l());
    } 
    if (parammlo.i()) {
      str1 = "Sim";
    } else {
      str1 = "Nao";
    } 
    hashMap.put("Transferencia_ProgramarMensal", str1);
    if (!"".equals(parammlo.j())) {
      str1 = parammlo.j();
      hashMap.put("Transferencia_ProgramarNumMeses", str1);
      hashMap.put("Transferencia_DataEfetivacao", nak.a(parammlo.g(), "yyyyMMdd", "dd/MM/yyyy"));
      gvb.g(true);
      gvb.a((Map)hashMap);
      return gvb;
    } 
    String str1 = "0";
    hashMap.put("Transferencia_ProgramarNumMeses", str1);
    hashMap.put("Transferencia_DataEfetivacao", nak.a(parammlo.g(), "yyyyMMdd", "dd/MM/yyyy"));
    gvb.g(true);
    gvb.a((Map)hashMap);
    return gvb;
  }
  
  private mlq b(mlo parammlo) {
    String str2 = null;
    mlq mlq = new mlq();
    mlq.setConnUuid(this.e.i());
    mlq.setTokenSessao(this.e.j());
    mlq.setTokenTransacao(this.e.f().m());
    mlq.q(parammlo.f());
    mlq.r(parammlo.d());
    mlq.b(parammlo.i());
    mlq.a(parammlo.h());
    mlq.p(parammlo.e());
    mlq.s(parammlo.p());
    mlq.f(parammlo.a().getCuenta());
    mlq.b(parammlo.a().getAgencia());
    mlq.o(c(parammlo));
    mlq.p(parammlo.e());
    mlq.h(parammlo.g());
    mlq.d(parammlo.l());
    if (parammlo.o() != null && !"".equals(parammlo.o())) {
      str1 = parammlo.o();
    } else {
      str1 = null;
    } 
    mlq.j(str1);
    String str1 = str2;
    if (parammlo.s() != null) {
      str1 = str2;
      if (!"".equals(parammlo.s()))
        str1 = parammlo.s(); 
    } 
    mlq.w(str1);
    if (parammlo.b() != null) {
      mlq.c(naj.a(parammlo.b().g(), 4));
      mlq.a(naj.a(parammlo.b().h(), 4));
      mlq.e(naj.a(parammlo.b().k(), 12));
      if (!parammlo.f().equalsIgnoreCase("TEF")) {
        mlq.g(parammlo.b().c());
        mlq.k(parammlo.b().e());
      } 
      mlq.u(parammlo.b().d());
      mlq.v(parammlo.b().b());
    } else {
      mlq.c(naj.a(parammlo.c().c(), 4));
      mlq.a(naj.a(parammlo.c().d(), 4));
      mlq.e(naj.a(parammlo.c().e() + parammlo.c().j(), 12));
      if (!parammlo.f().equalsIgnoreCase("TEF")) {
        mlq.g(parammlo.c().f());
        mlq.k(parammlo.c().h());
      } 
      mlq.u("N");
      mlq.v("N");
    } 
    if (parammlo.f().equalsIgnoreCase("TED")) {
      mlq.t(this.e.f().j());
      mlq.i(parammlo.m());
      mlq.l(parammlo.n());
    } 
    if (parammlo.i()) {
      mlq.m(parammlo.j());
      mlq.n(parammlo.k());
    } 
    return mlq;
  }
  
  private String c(mlo parammlo) {
    return "01".equals(parammlo.a().getTipoConta()) ? "CC" : "CCC";
  }
  
  private ArrayList<gky> d(mlo parammlo) {
    String str;
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("Conta Origem: ", naq.c(parammlo.a().getAgencia(), parammlo.a().getCuenta())));
    gky gky1 = new gky("Nome: ", this.e.f().j());
    gky1.a(true);
    arrayList.add(gky1);
    if (parammlo.b() != null) {
      if (parammlo.f().equalsIgnoreCase("TEF")) {
        arrayList.add(new gky("Conta de Destino: ", naq.c(parammlo.b().h(), parammlo.b().k())));
      } else {
        arrayList.add(new gky("Conta de Destino: ", parammlo.b().h() + "/" + parammlo.b().k()));
      } 
      gky1 = new gky("Nome: ", parammlo.b().e());
      gky1.a(true);
      arrayList.add(gky1);
      arrayList.add(new gky("Banco: ", parammlo.b().i()));
      if (!parammlo.f().equalsIgnoreCase("TEF"))
        arrayList.add(new gky("CPF/CNPJ: ", nai.c(parammlo.b().c()))); 
    } else {
      arrayList.add(new gky("Conta de Destino: ", naq.c(parammlo.c().d(), parammlo.c().e())));
      gky1 = new gky("Nome: ", parammlo.c().h());
      gky1.a(true);
      arrayList.add(gky1);
      arrayList.add(new gky("Banco: ", parammlo.c().l()));
      if (!parammlo.f().equalsIgnoreCase("TEF"))
        arrayList.add(new gky("CPF/CNPJ: ", nai.c(parammlo.c().f()))); 
    } 
    if (parammlo.f().equalsIgnoreCase("tef")) {
      str = "Transferência entre contas";
    } else {
      str = parammlo.f();
    } 
    gky gky2 = new gky("Tipo Transferência: ", str);
    gky2.a(true);
    arrayList.add(gky2);
    if (parammlo.h()) {
      arrayList.add(new gky("Data de Agendamento: ", nak.a(parammlo.g(), "yyyyMMdd", "dd/MM/yyyy")));
    } else if (parammlo.i()) {
      arrayList.add(new gky("Data de Programação: ", nak.a(parammlo.g(), "yyyyMMdd", "dd/MM/yyyy")));
    } else {
      arrayList.add(new gky("Data de Início: ", nak.a(parammlo.g(), "yyyyMMdd", "dd/MM/yyyy")));
    } 
    if (parammlo.i()) {
      if (parammlo.j().equalsIgnoreCase("S")) {
        arrayList.add(new gky("Periodicidade: ", this.a.getResources().getString(2131298309)));
      } else if (parammlo.j().equalsIgnoreCase("Q")) {
        arrayList.add(new gky("Periodicidade: ", this.a.getResources().getString(2131298308)));
      } else {
        arrayList.add(new gky("Periodicidade: ", this.a.getResources().getString(2131298307)));
      } 
      arrayList.add(new gky("Nº de Vezes: ", parammlo.k()));
    } 
    arrayList.add(new gky("Valor: ", "R$" + parammlo.d()));
    arrayList.add(new gky("", this.a.getResources().getString(2131298043)));
    if (!str.equalsIgnoreCase("Transferência entre contas"))
      arrayList.add(new gky("Histórico: ", parammlo.o())); 
    return arrayList;
  }
  
  public void a(mlo parammlo) {
    boolean bool1;
    boolean bool2 = true;
    if (!miq.C().w()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (miq.C().f().C().b("00000122"))
      bool2 = false; 
    if ((bool1 | bool2) != 0) {
      this.c.b(new mmj(this, parammlo), b(parammlo));
      return;
    } 
    this.f = new mml(this, parammlo);
    a(parammlo.q());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mmi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */