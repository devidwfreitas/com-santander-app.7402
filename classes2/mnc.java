import android.app.Activity;
import com.santander.app.contacorrente.domain.Conta;
import org.json.JSONObject;

public class mnc implements mna {
  private mip a;
  
  private Activity b;
  
  private mnb c;
  
  private mqc d;
  
  public mnc(Activity paramActivity, mnb parammnb) {
    this.b = paramActivity;
    this.c = parammnb;
    this.a = (mip)miq.C();
    this.d = new mqc(paramActivity);
  }
  
  private iq b(Conta paramConta) {
    String str1;
    String str2 = "";
    try {
      JSONObject jSONObject = new JSONObject();
      jSONObject.put("accountIndex", this.a.f().q().a(paramConta.getAgencia(), paramConta.getCuenta()));
      str1 = nab.a().b(jSONObject.toString());
    } catch (Exception exception) {
      str1 = str2;
    } 
    return gnz.a().a("transfer/v1/listAllGrantee", im.POST, str1, true);
  }
  
  private mku c(Conta paramConta) {
    mku mku = new mku();
    mku.setConnUuid(this.a.i());
    mku.setTokenSessao(this.a.j());
    mku.setTokenTransacao(this.a.f().m());
    mku.setAgencia(paramConta.getAgencia());
    mku.setConta(paramConta.getCuenta());
    return mku;
  }
  
  public void a(Conta paramConta) {
    // Byte code:
    //   0: aload_0
    //   1: getfield d : Lmqc;
    //   4: astore_2
    //   5: getstatic mqc.a : Lmkt;
    //   8: ifnull -> 48
    //   11: aload_0
    //   12: getfield d : Lmqc;
    //   15: astore_2
    //   16: getstatic mqc.b : Lcom/santander/app/contacorrente/domain/Conta;
    //   19: ifnull -> 48
    //   22: aload_0
    //   23: getfield d : Lmqc;
    //   26: astore_2
    //   27: getstatic mqc.b : Lcom/santander/app/contacorrente/domain/Conta;
    //   30: ifnull -> 138
    //   33: aload_0
    //   34: getfield d : Lmqc;
    //   37: astore_2
    //   38: getstatic mqc.b : Lcom/santander/app/contacorrente/domain/Conta;
    //   41: aload_1
    //   42: invokevirtual equals : (Ljava/lang/Object;)Z
    //   45: ifne -> 138
    //   48: aload_0
    //   49: getfield d : Lmqc;
    //   52: astore_2
    //   53: aconst_null
    //   54: putstatic mqc.a : Lmkt;
    //   57: aload_0
    //   58: getfield d : Lmqc;
    //   61: astore_2
    //   62: aconst_null
    //   63: putstatic mqc.b : Lcom/santander/app/contacorrente/domain/Conta;
    //   66: invokestatic C : ()Lmiq;
    //   69: invokevirtual w : ()Z
    //   72: ifeq -> 94
    //   75: invokestatic C : ()Lmiq;
    //   78: invokevirtual f : ()Lmir;
    //   81: invokevirtual C : ()Lipi;
    //   84: ldc '00000122'
    //   86: invokeinterface b : (Ljava/lang/String;)Z
    //   91: ifne -> 116
    //   94: aload_0
    //   95: getfield d : Lmqc;
    //   98: new mnd
    //   101: dup
    //   102: aload_0
    //   103: aload_1
    //   104: invokespecial <init> : (Lmnc;Lcom/santander/app/contacorrente/domain/Conta;)V
    //   107: aload_0
    //   108: aload_1
    //   109: invokespecial c : (Lcom/santander/app/contacorrente/domain/Conta;)Lmku;
    //   112: invokevirtual a : (Lgkw;Lmku;)V
    //   115: return
    //   116: aload_0
    //   117: getfield d : Lmqc;
    //   120: new mne
    //   123: dup
    //   124: aload_0
    //   125: aload_1
    //   126: invokespecial <init> : (Lmnc;Lcom/santander/app/contacorrente/domain/Conta;)V
    //   129: aload_0
    //   130: aload_1
    //   131: invokespecial b : (Lcom/santander/app/contacorrente/domain/Conta;)Liq;
    //   134: invokevirtual a : (Lgkw;Liq;)V
    //   137: return
    //   138: aload_0
    //   139: getfield c : Lmnb;
    //   142: astore_1
    //   143: aload_0
    //   144: getfield d : Lmqc;
    //   147: astore_2
    //   148: aload_1
    //   149: getstatic mqc.a : Lmkt;
    //   152: invokeinterface a : (Lmkt;)V
    //   157: return
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mnc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */