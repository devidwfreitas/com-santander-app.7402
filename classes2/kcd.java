import java.util.regex.Pattern;

public class kcd {
  private Pattern a = Pattern.compile("(?:^|[\\W])((ht|f)tp(s?):\\/\\/|www\\.)(([\\w\\-]+\\.){1,}?([\\w\\-.~]+\\/?)*[\\p{Alnum}.,%_=?&#\\-+()\\[\\]\\*$~@!:/{};']*)", 2);
  
  private Pattern b = Pattern.compile("bloqueio de sua conta|cartão online|cartao online|reative seu cartão|reative seu cartao|online expirado|evite multa|evite cancelamento|regularizar conta|tabela de seguranca|tabela de seguranÇa|tabela de segurança|faca reativação|faca reativaÇao|chave de seguranca|chave de seguranÇa|modulo de protecao|guardião|Agendamento de saque|Bloqueio conta|Bloqueio cartão", 2);
  
  private Pattern c = Pattern.compile("Dirija-se|multa|menu|bloqueio", 2);
  
  private Pattern d = Pattern.compile("Santander|Sant|Satander|Sanander|Santande|Sanlander|Sampander|Santa|Santader|Sanader|Santade|Santtder|santnander|Vangogh|Select|Sant_ander", 2);
  
  private String e;
  
  public kcd(String paramString) {
    this.e = paramString;
  }
  
  private Boolean d() {
    return Boolean.valueOf(this.a.matcher(this.e).find());
  }
  
  private Boolean e() {
    return Boolean.valueOf(this.d.matcher(this.e).find());
  }
  
  private Boolean f() {
    return Boolean.valueOf(this.b.matcher(this.e).find());
  }
  
  private Boolean g() {
    return Boolean.valueOf(this.c.matcher(this.e).find());
  }
  
  public Boolean a() {
    if (f().booleanValue() && d().booleanValue() && e().booleanValue()) {
      boolean bool1 = true;
      return Boolean.valueOf(bool1);
    } 
    boolean bool = false;
    return Boolean.valueOf(bool);
  }
  
  public Boolean b() {
    if (g().booleanValue() && e().booleanValue()) {
      boolean bool1 = true;
      return Boolean.valueOf(bool1);
    } 
    boolean bool = false;
    return Boolean.valueOf(bool);
  }
  
  public boolean c() {
    return (f().booleanValue() || d().booleanValue());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kcd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */