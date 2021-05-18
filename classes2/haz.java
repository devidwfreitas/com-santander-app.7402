import android.content.SharedPreferences;
import android.util.Log;
import com.santander.app.MinhaConta;
import java.io.InputStream;

public class haz extends hbm {
  private String a(String paramString1, String paramString2, long paramLong1, long paramLong2) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:buscarBanner>" + "<request>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<segmento>" + paramString2 + "</segmento>" + "<dataAtualizacao>" + paramLong1 + "</dataAtualizacao>" + "<dataAtualizacaoDefault>" + paramLong2 + "</dataAtualizacaoDefault>" + "<versao>1</versao>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "</request>" + "</web:buscarBanner>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public void a(String paramString, long paramLong1, long paramLong2) {
    try {
      InputStream inputStream;
      String str = a(this.a.j(), paramString, paramLong1, paramLong2);
      str = jcd.a(has.D(), str, "", true, false);
      if (str != null) {
        inputStream = c(str, "UTF-8");
        str = null;
        try {
          jyj jyj = new jyj(inputStream);
          jyj.b();
          fsu fsu = jyj.a();
          if (fsu != null && fsu.b() != null) {
            SharedPreferences.Editor editor = MinhaConta.b().getSharedPreferences("banner" + paramString, 0).edit();
            if (!fsu.b().isEmpty() && !fsu.b().equals("OK"))
              if ("NC0".equals(paramString)) {
                editor.putString("imagemNaoCorrentista", fsu.b());
                editor.putLong("dataInicioVigenciaNaoCorrentista", fsu.f());
                editor.putLong("dataFimVigenciaNaoCorrentista", fsu.g());
              } else {
                editor.putString("imagem", fsu.b());
                editor.putLong("dataInicioVigencia", fsu.f());
                editor.putLong("dataFimVigencia", fsu.g());
              }  
            if ("999".equals(fsu.a())) {
              paramLong1 = fsu.c();
            } else {
              paramLong1 = 0L;
            } 
            editor.putLong("dataAtualizacaoDefault", paramLong1);
            if (!"999".equals(fsu.a())) {
              paramLong1 = fsu.c();
            } else {
              paramLong1 = 0L;
            } 
            editor.putLong("dataAtualizacao", paramLong1);
            editor.putString("link", fsu.d());
            editor.putBoolean("popup", fsu.e());
            editor.commit();
          } 
          if (inputStream != null) {
            if (false)
              try {
                inputStream.close();
                return;
              } catch (Throwable null) {
                throw new NullPointerException();
              }  
          } else {
            return;
          } 
          inputStream.close();
          return;
        } catch (Throwable throwable) {
          try {
            throw throwable;
          } finally {}
        } finally {}
      } else {
        return;
      } 
      if (inputStream != null) {
        if (throwable != null) {
          try {
            inputStream.close();
          } catch (Throwable throwable2) {}
          throw paramString;
        } 
      } else {
        throw paramString;
      } 
    } catch (Exception throwable1) {
      Log.e("Error", throwable1.toString());
      return;
    } 
    throwable2.close();
    throw throwable1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\haz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */