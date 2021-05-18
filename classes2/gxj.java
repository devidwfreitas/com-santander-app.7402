import android.util.Log;
import com.santander.app.RendaFixaAplicacaoActivity;
import com.santander.app.emprestimo.acordo.presentation.AcordoSimulacaoActivity;
import com.santander.app.emprestimo.creditopessoal.presentation.CPSimulacaoActivity;
import com.santander.app.emprestimo.creditounificado.presentation.CPUSimulacaoActivity;
import com.santander.app.formalizacaodigital.presentation.ListagemPropostasActivity;
import com.santander.app.lojaonline.presentation.LojaOnlineActivity;

class gxj implements gsz {
  gxj(gxg paramgxg) {}
  
  private void a(gta paramgta, @hyr int paramInt) {
    gxg.j(this.a).a(paramInt, new gxp(this, paramInt));
  }
  
  public void a(gta paramgta) {
    Log.i("CARD_CRM", "LEFT");
    gwn.a(paramgta, gxg.b(this.a));
    switch (gxr.a[paramgta.e().ordinal()]) {
      default:
        return;
      case 1:
      case 2:
      case 3:
      case 4:
        this.a.a.f().w().a().remove(paramgta);
        this.a.a.f().w().a(Boolean.valueOf(true));
        return;
      case 5:
        gxg.a(this.a, new gxk(this, paramgta), paramgta, "N");
        return;
      case 6:
        gxg.a(this.a, new gxl(this, paramgta), paramgta, "N");
        return;
      case 7:
        gxg.c(this.a).a();
        this.a.a.f().w().a().remove(paramgta);
        return;
      case 8:
        gxg.d(this.a).edit().putBoolean("isCardCDB", false).commit();
        this.a.a.f().w().a().remove(paramgta);
        return;
      case 9:
        this.a.a.f().w().a().remove(paramgta);
        gxg.e(this.a).a();
        gxg.e(this.a).o();
        return;
      case 10:
        this.a.a.f().w().a().remove(paramgta);
        zs.a().b();
      case 11:
        gxg.f(this.a).a();
        return;
      case 12:
        break;
    } 
    gxg.g(this.a).a();
  }
  
  public void b(gta paramgta) {
    Log.i("CARD_CRM", "RIGHT");
    gwn.b(paramgta, gxg.b(this.a));
  }
  
  public void c(gta paramgta) {
    Log.i("CARD_CRM", "CLICK");
    gwn.c(paramgta, gxg.b(this.a));
    if (mzr.a() && paramgta.n()) {
      gxg.h(this.a).g();
      return;
    } 
    if (paramgta.a()) {
      this.a.a.f().w().a().remove(paramgta);
      gxg.h(this.a).c(paramgta);
    } 
    paramgta.d(true);
    switch (gxr.a[paramgta.e().ordinal()]) {
      default:
        return;
      case 1:
      case 2:
      case 4:
        this.a.a(paramgta);
        this.a.a.f().w().a(Boolean.valueOf(true));
        this.a.a.f().w().b(Boolean.valueOf(true));
        return;
      case 9:
        this.a.a.f().w().a(Boolean.valueOf(true));
        this.a.a.f().w().b(Boolean.valueOf(true));
        gxg.h(this.a).f();
        return;
      case 7:
        gxg.h(this.a).a(CPSimulacaoActivity.class);
        gxg.c(this.a).a();
        this.a.a.f().w().b(Boolean.valueOf(true));
        return;
      case 8:
        gxg.h(this.a).a(RendaFixaAplicacaoActivity.class);
        this.a.a.f().w().b(Boolean.valueOf(true));
        return;
      case 11:
        gxg.f(this.a).a();
        gxg.h(this.a).a(AcordoSimulacaoActivity.class);
        return;
      case 12:
        gxg.g(this.a).a();
        gxg.h(this.a).a(CPUSimulacaoActivity.class);
        return;
      case 3:
        jor.c();
        this.a.a.f().w().a(Boolean.valueOf(true));
        this.a.a.f().w().b(Boolean.valueOf(true));
        gxg.h(this.a).a(LojaOnlineActivity.class);
        return;
      case 10:
        jcw.c(gxg.i(this.a), "CARRINHO_ABANDONADO");
        return;
      case 13:
        if (mzr.a()) {
          gxg.h(this.a).g();
          return;
        } 
        gxg.h(this.a).a(ListagemPropostasActivity.class);
        return;
      case 5:
        gxg.a(this.a, new gxn(this, paramgta), paramgta, "S");
        return;
      case 6:
        break;
    } 
    gxg.a(this.a, new gxo(this, paramgta), paramgta, "S");
  }
  
  public void d(gta paramgta) {
    // Byte code:
    //   0: aload_1
    //   1: ifnull -> 152
    //   4: aload_1
    //   5: invokevirtual l : ()Z
    //   8: ifne -> 152
    //   11: aload_1
    //   12: aload_0
    //   13: getfield a : Lgxg;
    //   16: invokestatic b : (Lgxg;)Lgww;
    //   19: invokestatic d : (Lgta;Lgww;)V
    //   22: iconst_0
    //   23: istore_2
    //   24: iload_2
    //   25: aload_0
    //   26: getfield a : Lgxg;
    //   29: getfield a : Lmip;
    //   32: invokeinterface f : ()Lmir;
    //   37: invokevirtual w : ()Lgwx;
    //   40: invokevirtual a : ()Ljava/util/ArrayList;
    //   43: invokevirtual size : ()I
    //   46: if_icmpge -> 182
    //   49: aload_0
    //   50: getfield a : Lgxg;
    //   53: getfield a : Lmip;
    //   56: invokeinterface f : ()Lmir;
    //   61: invokevirtual w : ()Lgwx;
    //   64: invokevirtual a : ()Ljava/util/ArrayList;
    //   67: iload_2
    //   68: invokevirtual get : (I)Ljava/lang/Object;
    //   71: checkcast gta
    //   74: aload_1
    //   75: invokevirtual equals : (Ljava/lang/Object;)Z
    //   78: ifeq -> 153
    //   81: aload_0
    //   82: getfield a : Lgxg;
    //   85: getfield a : Lmip;
    //   88: invokeinterface f : ()Lmir;
    //   93: invokevirtual w : ()Lgwx;
    //   96: invokevirtual a : ()Ljava/util/ArrayList;
    //   99: iload_2
    //   100: invokevirtual get : (I)Ljava/lang/Object;
    //   103: checkcast gta
    //   106: iconst_1
    //   107: invokevirtual b : (Z)V
    //   110: getstatic gxr.a : [I
    //   113: aload_1
    //   114: invokevirtual e : ()Lgwq;
    //   117: invokevirtual ordinal : ()I
    //   120: iaload
    //   121: tableswitch default -> 152, 3 -> 178, 4 -> 152, 5 -> 160, 6 -> 160
    //   152: return
    //   153: iload_2
    //   154: iconst_1
    //   155: iadd
    //   156: istore_2
    //   157: goto -> 24
    //   160: aload_0
    //   161: getfield a : Lgxg;
    //   164: new gxm
    //   167: dup
    //   168: aload_0
    //   169: iload_2
    //   170: invokespecial <init> : (Lgxj;I)V
    //   173: aload_1
    //   174: invokestatic a : (Lgxg;Lgkw;Lgta;)V
    //   177: return
    //   178: invokestatic b : ()V
    //   181: return
    //   182: iconst_m1
    //   183: istore_2
    //   184: goto -> 110
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gxj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */