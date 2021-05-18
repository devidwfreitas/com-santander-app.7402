import com.santander.app.emprestimo.creditopessoal.domain.CPConsultarLimiteResponse;

class hyi implements gkv<CPConsultarLimiteResponse> {
  hyi(hyb paramhyb, hxy paramhxy) {}
  
  public void a(CPConsultarLimiteResponse paramCPConsultarLimiteResponse) {
    if (paramCPConsultarLimiteResponse != null && paramCPConsultarLimiteResponse.getConfirmacao() != null && paramCPConsultarLimiteResponse.getConfirmacao().equalsIgnoreCase("OK")) {
      String str = paramCPConsultarLimiteResponse.getValorLimiteRisco();
      if (hyx.b(str) > 0.0F) {
        hyb.b(this.b).a(str);
        this.a.a(10);
        return;
      } 
      hyb.b(this.b).a(str);
      this.a.a();
      return;
    } 
    this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hyi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */