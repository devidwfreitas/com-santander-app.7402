import com.santander.app.emprestimo.creditopessoal.domain.CPTextoCondicoesCPResponse;

class hte implements gkv<CPTextoCondicoesCPResponse> {
  hte(htd paramhtd) {}
  
  public void a(CPTextoCondicoesCPResponse paramCPTextoCondicoesCPResponse) {
    if (paramCPTextoCondicoesCPResponse != null && paramCPTextoCondicoesCPResponse.getCodigoRetorno().equals("0")) {
      htd.a(this.a).a(paramCPTextoCondicoesCPResponse.getConteudo());
      return;
    } 
    htd.a(this.a).b(htd.b(this.a).getString(2131297343));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hte.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */