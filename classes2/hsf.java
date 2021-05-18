import android.content.Context;
import java.text.NumberFormat;

class hsf {
  private NumberFormat a = hyx.b();
  
  private boolean a(hxr paramhxr1, hxr paramhxr2) {
    return (paramhxr2.getValorLimiteMax() > paramhxr1.getValorLimiteMax());
  }
  
  private boolean a(hxr paramhxr1, hxr paramhxr2, float paramFloat) {
    return (paramhxr2.getValorLimiteMax() < paramhxr1.getValorLimiteMax() && paramhxr2.getValorLimiteMax() < paramFloat);
  }
  
  private boolean b(hxr paramhxr1, hxr paramhxr2) {
    return (paramhxr2.getValorLimiteMax() == paramhxr1.getValorLimiteMax() && paramhxr2.getParcelaMax() > paramhxr1.getParcelaMax());
  }
  
  private boolean b(hxr paramhxr1, hxr paramhxr2, float paramFloat) {
    return (paramhxr2.getValorLimiteMax() == paramhxr1.getValorLimiteMax() && paramhxr2.getParcelaMax() < paramhxr1.getParcelaMax() && paramhxr2.getParcelaMax() < paramFloat);
  }
  
  void a(Context paramContext, hxr paramhxr1, hxr paramhxr2, float paramFloat, int paramInt, hsh paramhsh) {
    Float float_1;
    Integer integer1;
    Float float_2;
    Integer integer2;
    boolean bool;
    String str1;
    String str2;
    String str3;
    String str4;
    if (a(paramhxr1, paramhxr2, paramFloat)) {
      bool = true;
      paramInt = 1;
      float_1 = Float.valueOf(paramhxr2.getValorLimiteMax());
      Float float_ = Float.valueOf(paramFloat);
      str4 = String.format("Seu limite para oferta especial\né de %s", new Object[] { this.a.format(paramhxr2.getValorLimiteMax()) });
      str2 = this.a.format(float_1);
      str1 = this.a.format(float_);
      str3 = "Com qual valor deseja continuar?";
      float_2 = float_;
    } else if (b((hxr)float_1, (hxr)float_2, paramInt)) {
      bool = false;
      boolean bool1 = true;
      integer1 = Integer.valueOf(float_2.getParcelaMax());
      integer2 = Integer.valueOf(paramInt);
      str2 = String.valueOf(integer1);
      str1 = String.valueOf(integer2);
      str3 = "Com qual quantidade de parcelas deseja continuar?";
      str4 = "Para oferta especial, quantidade das suas parcelas precisará ser recalculada";
      paramInt = bool1;
    } else if (b((hxr)integer1, (hxr)integer2)) {
      bool = false;
      boolean bool1 = true;
      integer1 = Integer.valueOf(integer2.getParcelaMax());
      Integer integer = Integer.valueOf(paramInt);
      str4 = String.format("Para oferta especial, você conta com até %s parcelas a mais para pagar", new Object[] { Integer.valueOf(integer2.getParcelaMax()) });
      str2 = String.valueOf(integer1);
      str1 = String.valueOf(integer);
      str3 = "Com qual quantidade de parcelas deseja continuar?";
      paramInt = bool1;
      integer2 = integer;
    } else if (a((hxr)integer1, (hxr)integer2)) {
      bool = true;
      paramInt = 1;
      Float float_3 = Float.valueOf(integer2.getValorLimiteMax());
      Float float_5 = Float.valueOf(paramFloat);
      str4 = String.format("Seu limite para oferta especial\né de %s", new Object[] { this.a.format(integer2.getValorLimiteMax()) });
      str2 = this.a.format(float_3);
      str1 = this.a.format(float_5);
      str3 = "Com qual valor deseja continuar?";
      Float float_4 = float_5;
    } else {
      paramInt = 0;
      bool = false;
      integer1 = null;
      integer2 = null;
      str3 = "";
      str4 = "";
      str1 = "";
      str2 = "";
    } 
    if (paramInt == 0) {
      paramhsh.a();
      return;
    } 
    hys.b(paramContext, str4, str3, str2, str1, new hsg(this, bool, paramhsh, integer1, integer2));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hsf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */