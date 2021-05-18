public class hbf extends hbm {
  private String a(String paramString1, String paramString2, String paramString3, String paramString4, fuu paramfuu) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:incluirNovoFavorecido>" + "<entrada>" + "<agenciaCredito>" + paramfuu.getAgencia() + "</agenciaCredito>" + "<agenciaOrigem>" + paramString3 + "</agenciaOrigem>" + "<bancoCredito>" + paramfuu.getBanco() + "</bancoCredito>" + "<contaCredito>" + paramfuu.getCuenta() + "</contaCredito>" + "<contaOrigem>" + paramString4 + "</contaOrigem>" + "<cpfCnpj1>" + paramfuu.getNumeroDocumento() + "</cpfCnpj1>" + "<indicadorContaConjunta>" + paramfuu.getIndicadorContaConjunta() + "</indicadorContaConjunta>" + "<nomeTit1>" + paramfuu.getDescricao() + "</nomeTit1>" + "<tipoConta>" + paramfuu.getTipoConta() + "</tipoConta>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString2 + "</tokenSessao>" + "<tokenTransacao>" + paramString1 + "</tokenTransacao>" + "</entrada>" + "</web:incluirNovoFavorecido>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  public boolean a(String paramString1, String paramString2, fuu paramfuu) {
    try {
      String str = this.a.j();
      paramString1 = a(this.a.f().m(), str, paramString1, paramString2, paramfuu);
      paramString1 = jcd.a(has.b(), paramString1, "", true);
      return (paramString1 != null);
    } catch (Exception exception) {
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */