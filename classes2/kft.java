import java.util.ArrayList;
import java.util.List;

class kft implements kdr {
  kft(kfs paramkfs) {}
  
  public void a(kdd paramkdd) {
    if (!paramkdd.getConfirmacao().equalsIgnoreCase("ok")) {
      kfs.a(this.a).a(paramkdd.getMensagemErro());
    } else {
      String str;
      if (paramkdd.a() != null && !paramkdd.a().isEmpty()) {
        kdj kdj = paramkdd.a().get(0);
      } else {
        paramkdd = null;
      } 
      ArrayList<kdi> arrayList = new ArrayList();
      kdi kdi2 = new kdi();
      if (paramkdd.j() != null) {
        str = paramkdd.j();
      } else {
        str = "";
      } 
      kdi2.a(str);
      kdi2.b(2131362017);
      arrayList.add(kdi2);
      kdi2 = new kdi();
      kdi2.a("Data de contratação:");
      if (paramkdd.d() != null) {
        str = paramkdd.d();
      } else {
        str = "";
      } 
      kdi2.b(str);
      kdi2.b(2131362016);
      kdi2.a(2131624195);
      arrayList.add(kdi2);
      kdi2 = new kdi();
      kdi2.a("Dia do pagamento:");
      if (paramkdd.h() != null) {
        str = paramkdd.h();
      } else {
        str = "";
      } 
      kdi2.b(str);
      kdi2.b(2131362016);
      kdi2.a(2131624195);
      arrayList.add(kdi2);
      kdi2 = new kdi();
      kdi2.a("Contribuição mensal:");
      if (paramkdd.r() != null) {
        str = paramkdd.r();
      } else {
        str = "";
      } 
      kdi2.b(str);
      kdi2.b(2131362016);
      kdi2.a(2131624195);
      arrayList.add(kdi2);
      if (paramkdd.b() != null || paramkdd.c() != null) {
        kdi kdi = new kdi();
        kdi.a("Agência/Conta:");
        kdi.b(naq.c(paramkdd.b(), paramkdd.c()));
        kdi.b(2131362016);
        kdi.a(2131624195);
        arrayList.add(kdi);
      } 
      kdi2 = new kdi();
      kdi2.a("Tipo de renda:");
      if (paramkdd.p() != null) {
        str = paramkdd.p();
      } else {
        str = "";
      } 
      kdi2.b(str);
      kdi2.b(2131362016);
      kdi2.a(2131624195);
      arrayList.add(kdi2);
      kdi2 = new kdi();
      kdi2.a("Início da renda:");
      if (paramkdd.e() != null) {
        str = paramkdd.e();
      } else {
        str = "";
      } 
      kdi2.b(str);
      kdi2.b(2131362016);
      kdi2.a(2131624195);
      arrayList.add(kdi2);
      List list2 = paramkdd.t();
      if (list2 != null && list2.size() > 0) {
        kdi2 = new kdi();
        kdi2.a("Beneficiários");
        kdi2.b(2131362016);
        kdi2.a(2131623937);
        arrayList.add(kdi2);
        for (kdb kdb : list2) {
          String str1 = kdb.d().split("\\.")[0] + "%";
          kdi kdi = new kdi();
          kdi.a(kdb.b());
          kdi.b(str1);
          kdi.b(2131362016);
          kdi.a(2131624195);
          arrayList.add(kdi);
        } 
      } 
      List list1 = paramkdd.u();
      if (list1 != null && !list1.isEmpty()) {
        arrayList.add(new kdi());
        kdi kdi = new kdi();
        kdi.a("COBERTURA DE RISCO");
        kdi.b(2131362017);
        kdi.a(2131623961);
        arrayList.add(kdi);
        for (kcv kcv : list1) {
          kdi2 = new kdi();
          kdi2.a("Início da vigência:");
          kdi2.b(kcv.f());
          kdi2.b(2131362016);
          kdi2.a(2131624195);
          arrayList.add(kdi2);
          kdi2 = new kdi();
          kdi2.a("Situação do plano:");
          kdi2.b(kcv.n());
          kdi2.b(2131362016);
          kdi2.a(2131624195);
          arrayList.add(kdi2);
          kdi2 = new kdi();
          kdi2.a("Benefício:");
          kdi2.b(kcv.q());
          kdi2.b(2131362016);
          kdi2.a(2131624195);
          arrayList.add(kdi2);
          kdi2 = new kdi();
          kdi2.a("Prêmio mensal:");
          kdi2.b(kcv.r());
          kdi2.b(2131362016);
          kdi2.a(2131624195);
          arrayList.add(kdi2);
          if (kcv.t() != null && !kcv.t().isEmpty()) {
            kdi2 = new kdi();
            kdi2.a("Beneficiários");
            kdi2.b(2131362016);
            kdi2.a(2131623937);
            arrayList.add(kdi2);
            for (kdb kdb : kcv.t()) {
              String str1 = kdb.d().split("\\.")[0] + "%";
              kdi kdi3 = new kdi();
              kdi3.a(kdb.b());
              kdi3.b(str1);
              kdi3.b(2131362016);
              kdi3.a(2131624195);
              arrayList.add(kdi3);
            } 
          } 
          arrayList.add(new kdi());
        } 
      } 
      kdi kdi1 = new kdi();
      kdi1.a("Planos administrados pela Zurich Santander Brasil Seguros e Previdência S.A., CNPJ: 87.376.109/0001-06.");
      kdi1.b(2131362016);
      kdi1.a(2131623937);
      arrayList.add(kdi1);
      kfs.a(this.a).a(arrayList);
    } 
    kfs.a(this.a).d();
  }
  
  public void b(kdd paramkdd) {
    kfs.a(this.a).d();
    kfs.a(this.a).a(paramkdd.getMensagemErro());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kft.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */