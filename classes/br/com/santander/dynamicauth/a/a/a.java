package br.com.santander.dynamicauth.a.a;

import java.util.regex.Pattern;

public class a {
  private Pattern a = Pattern.compile("(?:^|[\\W])((ht|f)tp(s?):\\/\\/|www\\.)(([\\w\\-]+\\.){1,}?([\\w\\-.~]+\\/?)*[\\p{Alnum}.,%_=?&#\\-+()\\[\\]\\*$~@!:/{};']*)", 2);
  
  private Pattern b = Pattern.compile("Santander|Sant|Satander|Sanander|Santande|Sanlander|Sampander|Santa|Santader|Sanader|Santade|Santtder|santnander|Vangogh|Select|bloqueio de sua conta|cartão online|cartao online|reative seu cartão|reative seu cartao|online expirado|evite multa|evite cancelamento|regularizar conta|tabela de seguranca|tabela de seguranÇa|tabela de segurança|faca reativação|faca reativaÇao|chave de seguranca|chave de seguranÇa|modulo de protecao|guardião|Agendamento de saque|Bloqueio conta|Bloqueio cartão", 2);
  
  private String c;
  
  public a(String paramString) {
    this.c = paramString;
  }
  
  private Boolean b() {
    return Boolean.valueOf(this.a.matcher(this.c).find());
  }
  
  private Boolean c() {
    return Boolean.valueOf(this.b.matcher(this.c).find());
  }
  
  public Boolean a() {
    if (c().booleanValue() && b().booleanValue()) {
      boolean bool1 = true;
      return Boolean.valueOf(bool1);
    } 
    boolean bool = false;
    return Boolean.valueOf(bool);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */