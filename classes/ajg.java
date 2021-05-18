import java.io.Serializable;
import java.util.Collections;
import java.util.List;

public class ajg implements Serializable {
  @ekq
  @eks(a = "consolidated")
  private aji a;
  
  @ekq
  @eks(a = "category")
  private List<ajh> b;
  
  private ajh a(ajt paramajt) {
    for (ajh ajh : this.b) {
      if (ajh.b().equals(String.valueOf(paramajt.getCode())))
        return ajh; 
    } 
    return null;
  }
  
  public aji a() {
    return this.a;
  }
  
  public void a(aji paramaji) {
    this.a = paramaji;
  }
  
  public void a(List<ajh> paramList) {
    this.b = paramList;
  }
  
  public List<ajh> b() {
    return this.b;
  }
  
  public int c() {
    for (ajh ajh : this.b) {
      if (ajh.b().equals(Integer.valueOf(ajt.RENEGOCIACAO.getCode())))
        return Integer.parseInt(ajh.c().a()); 
    } 
    return 0;
  }
  
  public int d() {
    ajh ajh = a(ajt.CARTAO);
    return (ajh == null) ? 0 : Integer.parseInt(ajh.c().a());
  }
  
  public int e() {
    ajh ajh = a(ajt.USO_DE_LIMITE_DE_CONTA);
    return (ajh == null) ? 0 : Integer.parseInt(ajh.c().a());
  }
  
  public int f() {
    ajh ajh = a(ajt.EMPRESTIMO);
    return (ajh == null) ? 0 : Integer.parseInt(ajh.c().a());
  }
  
  public int g() {
    ajh ajh = a(ajt.FINANCIAMENTO);
    return (ajh == null) ? 0 : Integer.parseInt(ajh.c().a());
  }
  
  public String h() {
    ajh ajh = a(ajt.USO_DE_LIMITE_DE_CONTA);
    return (ajh == null) ? "" : ajh.c().b().b();
  }
  
  public String i() {
    ajh ajh = a(ajt.CARTAO);
    return (ajh == null) ? "" : ajh.c().b().b();
  }
  
  public String j() {
    ajh ajh = a(ajt.EMPRESTIMO);
    return (ajh == null) ? "" : ajh.c().b().b();
  }
  
  public String k() {
    ajh ajh = a(ajt.FINANCIAMENTO);
    return (ajh == null) ? "" : ajh.c().b().b();
  }
  
  public String l() {
    ajh ajh = a(ajt.RENEGOCIACAO);
    return (ajh == null) ? "" : ajh.c().b().b();
  }
  
  public String m() {
    ajh ajh = a(ajt.USO_DE_LIMITE_DE_CONTA);
    return (ajh == null) ? "" : ajh.c().b().a();
  }
  
  public String n() {
    ajh ajh = a(ajt.CARTAO);
    return (ajh == null) ? "" : ajh.c().b().a();
  }
  
  public String o() {
    ajh ajh = a(ajt.EMPRESTIMO);
    return (ajh == null) ? "" : ajh.c().b().a();
  }
  
  public String p() {
    ajh ajh = a(ajt.FINANCIAMENTO);
    return (ajh == null) ? "" : ajh.c().b().a();
  }
  
  public String q() {
    ajh ajh = a(ajt.RENEGOCIACAO);
    return (ajh == null) ? "" : ajh.c().b().a();
  }
  
  public List<ajn> r() {
    ajh ajh = a(ajt.EMPRESTIMO);
    return (ajh == null) ? Collections.emptyList() : ajh.c().c();
  }
  
  public List<ajn> s() {
    ajh ajh = a(ajt.FINANCIAMENTO);
    return (ajh == null) ? Collections.emptyList() : ajh.c().c();
  }
  
  public List<ajn> t() {
    ajh ajh = a(ajt.RENEGOCIACAO);
    return (ajh == null) ? Collections.emptyList() : ajh.c().c();
  }
  
  public boolean u() {
    ajh ajh = a(ajt.EMPRESTIMO);
    return (ajh.c().b().c() != null && !ajh.c().b().c().isEmpty());
  }
  
  public boolean v() {
    ajh ajh = a(ajt.FINANCIAMENTO);
    return (ajh.c().b().c() != null && !ajh.c().b().c().isEmpty());
  }
  
  public boolean w() {
    ajh ajh = a(ajt.RENEGOCIACAO);
    return (ajh.c().b().c() != null && !ajh.c().b().c().isEmpty());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */