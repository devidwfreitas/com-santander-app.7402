import android.util.Log;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class jrj extends hbm {
  private String a(fua paramfua) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:>" + "<request>" + "<codAgencia>" + "" + "</codAgencia>" + "<codBanco>" + "" + "</codBanco>" + "<codConta>" + "" + "</codConta>" + "<propriedade1>" + "" + "</propriedade1>" + "<propriedade2>" + "" + "</propriedade2>" + "<connUuid>" + "" + "</connUuid>" + "<tokenSessao>" + "" + "</tokenSessao>" + "<tokenTransacao>" + "" + "</tokenTransacao>" + "</request>" + "</web:>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public List<fuc> a() {
    ArrayList<fuc> arrayList = new ArrayList();
    try {
      InputStream inputStream;
      fua fua = new fua();
      fua.b(mzr.e());
      mzr.f();
      mzr.h();
      this.a.j();
      this.a.f().m();
      a(fua);
      String str = "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<dlwmin:cadastrarPasso1Response xmlns:dlwmin=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<quizPerguntaNMResponse>" + "<codigoRetorno>" + "OK" + "</codigoRetorno>" + "<mensagemRetorno/>" + "<perguntaQuiz>" + "<codigoClasResposta>" + "OBR" + "</codigoClasResposta>" + "<codigoPergunta>" + "01" + "</codigoPergunta>" + "<descPergunta>" + "DATA DE NASCIMENTO" + "</descPergunta>" + "<formatoResposta>" + "03" + "</formatoResposta>" + "<idGrupoPergunta/>" + "<indRespostaCriptografada>" + "N" + "</indRespostaCriptografada>" + "<tamanhoResposta>" + "008" + "</tamanhoResposta>" + "</perguntaQuiz>" + "<perguntaQuiz>" + "<codigoClasResposta>" + "OPC" + "</codigoClasResposta>" + "<codigoPergunta>" + "05" + "</codigoPergunta>" + "<descPergunta>" + "NUMERO DA AGÊNCIA" + "</descPergunta>" + "<formatoResposta>" + "01" + "</formatoResposta>" + "<idGrupoPergunta/>" + "<indRespostaCriptografada>" + "N" + "</indRespostaCriptografada>" + "<tamanhoResposta>" + "004" + "</tamanhoResposta>" + "</perguntaQuiz>" + "<perguntaQuiz>" + "<codigoClasResposta>" + "OBR" + "</codigoClasResposta>" + "<codigoPergunta>" + "06" + "</codigoPergunta>" + "<descPergunta>" + "NÚMERO DA CONTA" + "</descPergunta>" + "<formatoResposta>" + "01" + "</formatoResposta>" + "<idGrupoPergunta/>" + "<indRespostaCriptografada>" + "N" + "</indRespostaCriptografada>" + "<tamanhoResposta>" + "012" + "</tamanhoResposta>" + "</perguntaQuiz>" + "<perguntaQuiz>" + "<codigoClasResposta>" + "OPC" + "</codigoClasResposta>" + "<codigoPergunta>" + "99" + "</codigoPergunta>" + "<descPergunta>" + "ESTOU SEM CARTÃO" + "</descPergunta>" + "<formatoResposta>" + "99" + "</formatoResposta>" + "<idGrupoPergunta/>" + "<indRespostaCriptografada>" + "N" + "</indRespostaCriptografada>" + "<tamanhoResposta>" + "99" + "</tamanhoResposta>" + "</perguntaQuiz>" + "<dataHash>" + "dGVzdGU=" + "</dataHash>" + "</quizPerguntaNMResponse>" + "</dlwmin:cadastrarPasso1Response>" + "</soapenv:Body>" + "</soapenv:Envelope>";
      ArrayList<fuc> arrayList1 = arrayList;
      if (str != null) {
        inputStream = c(str, "UTF-8");
        try {
          jqo jqo = new jqo(inputStream);
          return jqo.a().a();
        } finally {
          inputStream = null;
        } 
      } 
      return (List<fuc>)inputStream;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fub fub = new fub();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fub.setError(fvu);
      return arrayList;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jrj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */