import android.text.TextUtils;
import java.util.Calendar;

public class hlg implements hxl {
  @eks(a = "cancellable")
  private String A;
  
  @eks(a = "onlineAverbationPasswordFlag")
  private String B;
  
  @eks(a = "idDossier")
  private String C;
  
  private hlh D;
  
  private String E;
  
  @eks(a = "id")
  private String a;
  
  @eks(a = "contractId")
  private String b;
  
  @eks(a = "proposalId")
  private String c;
  
  @eks(a = "subProductName")
  private String d;
  
  @eks(a = "registrationId")
  private String e;
  
  @eks(a = "totalLoanValue")
  private String f;
  
  @eks(a = "loanValue")
  private String g;
  
  @eks(a = "gnid")
  private String h;
  
  @eks(a = "insurenceValue")
  private String i;
  
  @eks(a = "debtorBalance")
  private String j;
  
  @eks(a = "dates")
  private hli k;
  
  @eks(a = "insuranceValue")
  private String l;
  
  @eks(a = "cancelChannel")
  private String m;
  
  @eks(a = "branchCodeLiberation")
  private String n;
  
  @eks(a = "observation")
  private String o;
  
  @eks(a = "channelCode")
  private String p;
  
  @eks(a = "status")
  private String q;
  
  @eks(a = "agreementCode")
  private String r;
  
  @eks(a = "agreementName")
  private String s;
  
  @eks(a = "installments")
  private hlj t;
  
  @eks(a = "tax")
  private hll u;
  
  @eks(a = "channelDescription")
  private String v;
  
  @eks(a = "operationType")
  private String w;
  
  @eks(a = "accountLiberation")
  private String x;
  
  @eks(a = "subProductCode")
  private String y;
  
  @eks(a = "productName")
  private String z;
  
  public String A() {
    return this.E;
  }
  
  public String B() {
    return "";
  }
  
  public int a() {
    return 11;
  }
  
  public void a(hlh paramhlh) {
    this.D = paramhlh;
  }
  
  public void a(String paramString) {
    this.E = paramString;
  }
  
  public int b() {
    String str = this.q.toLowerCase();
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            return 1;
          case 2:
            return 5;
          case 3:
            return 6;
          case 4:
          case 5:
            return 4;
          case 6:
            return 3;
          case 7:
            return 2;
          case 8:
            break;
        } 
        return 7;
      case 93141967:
        if (str.equals("ativo"))
          b = 1; 
      case -1407318146:
        if (str.equals("atraso"))
          b = 2; 
      case 1333261808:
        if (str.equals("liquidado"))
          b = 3; 
      case 643049383:
        if (str.equals("andamento"))
          b = 4; 
      case 314497477:
        if (str.equals("pendente"))
          b = 5; 
      case -270150896:
        if (str.equals("reprovado"))
          b = 6; 
      case 476577778:
        if (str.equals("cancelado"))
          b = 7; 
      case 443427458:
        break;
    } 
    if (str.equals("em cancelamento"))
      b = 8; 
  }
  
  public String c() {
    return f() ? this.a : this.b;
  }
  
  public String d() {
    return c();
  }
  
  public boolean e() {
    return (!TextUtils.isEmpty(this.B) && "true".equalsIgnoreCase(this.B));
  }
  
  public boolean f() {
    return (this.a != null);
  }
  
  public String g() {
    try {
      return hyx.b().format(Float.parseFloat(this.g));
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public int h() {
    String str;
    try {
      if (f()) {
        String str1 = String.valueOf(this.t.a());
        return Integer.parseInt(str1);
      } 
      str = ((hlk)this.t.a()).b;
    } catch (Exception exception) {
      str = "0";
    } 
    return Integer.parseInt(str);
  }
  
  public int i() {
    String str;
    try {
      if (f()) {
        String str1 = String.valueOf(this.t.a());
        return Integer.parseInt(str1);
      } 
      str = ((hlk)this.t.a()).a;
    } catch (Exception exception) {
      str = "0";
    } 
    return Integer.parseInt(str);
  }
  
  public String j() {
    try {
      int i = hyx.d(this.k.c).get(5);
      return String.valueOf(i);
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String k() {
    return hyx.b().format(Float.parseFloat(this.t.a));
  }
  
  public String l() {
    try {
      return hyx.b().format(Float.parseFloat(this.u.d));
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public String m() {
    try {
      return hyx.b().format(Float.parseFloat(this.i));
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public String n() {
    return this.z;
  }
  
  public String o() {
    String str;
    try {
      str = hyx.a("%.2f", new Object[] { Float.valueOf(Float.parseFloat(this.u.c)) });
    } catch (Exception exception) {
      str = "0";
    } 
    return str + "% a.m.";
  }
  
  public String p() {
    String str;
    try {
      str = hyx.a("%.2f", new Object[] { Float.valueOf(Float.parseFloat(this.u.e)) });
    } catch (Exception exception) {
      str = "0";
    } 
    return str + "% a.a.";
  }
  
  public String q() {
    String str;
    try {
      str = hyx.a("%.2f", new Object[] { Float.valueOf(Float.parseFloat(this.u.b)) });
    } catch (Exception exception) {
      str = "0";
    } 
    return str + "% a.m.";
  }
  
  public String r() {
    String str;
    try {
      str = hyx.a("%.2f", new Object[] { Float.valueOf(Float.parseFloat(this.u.a)) });
    } catch (Exception exception) {
      str = "0";
    } 
    return str + "% a.a.";
  }
  
  public String s() {
    return hyx.b().format(Float.parseFloat(this.j));
  }
  
  public String t() {
    return this.k.a;
  }
  
  public String u() {
    try {
      Calendar calendar = hyx.d(t());
      return hyx.c("dd/MM/yyy").format(calendar.getTime());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String v() {
    return "Em até 2 dias úteis";
  }
  
  public int w() {
    String str;
    try {
      if (f()) {
        String str1 = String.valueOf(this.t.a());
        return Integer.parseInt(str1);
      } 
      str = ((hlk)this.t.a()).c;
    } catch (Exception exception) {
      str = "0";
    } 
    return Integer.parseInt(str);
  }
  
  public String x() {
    try {
      Calendar calendar = hyx.d(this.k.d);
      return hyx.c("dd/MM/yyy").format(calendar.getTime());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public boolean y() {
    return "true".equalsIgnoreCase(this.A);
  }
  
  public hlh z() {
    return this.D;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hlg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */