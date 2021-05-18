import android.util.Log;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class gfe implements Serializable {
  @eks(a = "grossValue")
  private String a;
  
  @eks(a = "type")
  private String b;
  
  @eks(a = "investment")
  private String c;
  
  @eks(a = "investmentValue")
  private String d;
  
  @eks(a = "netValue")
  private String e;
  
  @eks(a = "maturityDate")
  private String f;
  
  @eks(a = "yearPercentFee")
  private String g;
  
  @eks(a = "indexCode")
  private String h;
  
  @eks(a = "issueDate")
  private String i;
  
  private final String j = "TOTAL";
  
  private final String k = "R$ 0,00";
  
  private List<gfe> l;
  
  private String j(String paramString) {
    String str = paramString;
    if (!paramString.contains("%"))
      str = paramString + "%"; 
    return str;
  }
  
  public gev a(List<gfe> paramList) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: putfield l : Ljava/util/List;
    //   5: new gev
    //   8: dup
    //   9: invokespecial <init> : ()V
    //   12: astore #5
    //   14: aload #5
    //   16: getstatic gfg.RENDA_FIXA : Lgfg;
    //   19: invokevirtual a : (Lgfg;)V
    //   22: aload #5
    //   24: getstatic gfg.RENDA_FIXA : Lgfg;
    //   27: invokevirtual getName : ()Ljava/lang/String;
    //   30: invokevirtual a : (Ljava/lang/String;)V
    //   33: aload #5
    //   35: ldc 'R$ 0,00'
    //   37: invokevirtual b : (Ljava/lang/String;)V
    //   40: aload_1
    //   41: ifnull -> 161
    //   44: aload_1
    //   45: invokeinterface isEmpty : ()Z
    //   50: ifne -> 161
    //   53: aload_1
    //   54: invokeinterface iterator : ()Ljava/util/Iterator;
    //   59: astore_2
    //   60: aload_2
    //   61: invokeinterface hasNext : ()Z
    //   66: ifeq -> 164
    //   69: aload_2
    //   70: invokeinterface next : ()Ljava/lang/Object;
    //   75: checkcast gfe
    //   78: astore_1
    //   79: ldc 'TOTAL'
    //   81: aload_1
    //   82: invokevirtual b : ()Ljava/lang/String;
    //   85: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   88: ifeq -> 60
    //   91: aload_1
    //   92: invokevirtual a : ()Ljava/lang/String;
    //   95: invokestatic M : (Ljava/lang/String;)Ljava/lang/String;
    //   98: astore_2
    //   99: aload_1
    //   100: invokevirtual e : ()Ljava/lang/String;
    //   103: invokestatic M : (Ljava/lang/String;)Ljava/lang/String;
    //   106: astore_1
    //   107: aload #5
    //   109: iconst_1
    //   110: invokevirtual c : (Z)V
    //   113: aload_1
    //   114: astore #4
    //   116: aload_2
    //   117: astore_3
    //   118: ldc ''
    //   120: aload_1
    //   121: invokevirtual equals : (Ljava/lang/Object;)Z
    //   124: ifeq -> 148
    //   127: aload_1
    //   128: astore #4
    //   130: aload_2
    //   131: astore_3
    //   132: ldc ''
    //   134: aload_2
    //   135: invokevirtual equals : (Ljava/lang/Object;)Z
    //   138: ifeq -> 148
    //   141: ldc 'R$ 0,00'
    //   143: astore #4
    //   145: ldc 'R$ 0,00'
    //   147: astore_3
    //   148: aload #5
    //   150: aload #4
    //   152: invokevirtual c : (Ljava/lang/String;)V
    //   155: aload #5
    //   157: aload_3
    //   158: invokevirtual b : (Ljava/lang/String;)V
    //   161: aload #5
    //   163: areturn
    //   164: ldc ''
    //   166: astore_1
    //   167: ldc ''
    //   169: astore_2
    //   170: goto -> 113
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public ger b(List<gfe> paramList) {
    ger ger = new ger();
    ger.a("R$ 00000");
    ger.b("R$ 00000");
    ArrayList<gev> arrayList = new ArrayList();
    if (this.l != null)
      for (gfe gfe1 : this.l) {
        if (!gfe1.b().equalsIgnoreCase("TOTAL")) {
          gev gev = new gev();
          gev.a(gfe1.b());
          gev.b(gfe1.a());
          gev.c(true);
          BigDecimal bigDecimal = new BigDecimal(0);
          if (paramList != null) {
            for (gfe gfe2 : paramList) {
              if (gfe1.b().equalsIgnoreCase(gfe2.b())) {
                gex gex = new gex();
                ArrayList<gev> arrayList1 = new ArrayList();
                arrayList1.add(new gev("EXTRATO", "", false, true));
                arrayList1.add(new gev(gfe2.c(), naj.b(gfe2.a())));
                arrayList1.add(new gev("Saldo aplicado", naj.b(gfe2.d())));
                arrayList1.add(new gev("Saldo líquido", naj.b(gfe2.e())));
                arrayList1.add(new gev("Emissão", gfe2.h()));
                arrayList1.add(new gev("Vencimento", gfe2.f()));
                arrayList1.add(new gev("Índice", gfe2.g()));
                arrayList1.add(new gev("Taxa %A.A.", j(gfe2.i())));
                gex.a(true);
                gex.a(arrayList1);
                try {
                  BigDecimal bigDecimal1 = naj.O(gfe2.e());
                } catch (ClassNotFoundException classNotFoundException) {
                  Log.e("Error", classNotFoundException.toString());
                  classNotFoundException = null;
                } 
                bigDecimal = bigDecimal.add((BigDecimal)classNotFoundException);
                gev.e().add(gex);
              } 
            } 
            gev.d(String.valueOf(bigDecimal));
            arrayList.add(gev);
          } 
        } 
      }  
    ger.a = arrayList;
    return ger;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public String d() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public String e() {
    return this.e;
  }
  
  public void e(String paramString) {
    this.e = paramString;
  }
  
  public String f() {
    return this.f;
  }
  
  public void f(String paramString) {
    this.f = paramString;
  }
  
  public String g() {
    return this.h;
  }
  
  public void g(String paramString) {
    this.h = paramString;
  }
  
  public String h() {
    return this.i;
  }
  
  public void h(String paramString) {
    this.i = paramString;
  }
  
  public String i() {
    return this.g;
  }
  
  public void i(String paramString) {
    this.g = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gfe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */