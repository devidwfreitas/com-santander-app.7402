import com.santander.app.emprestimo.creditopessoal.domain.CPContratarEmprestimoResponse;

class htf implements gkv<CPContratarEmprestimoResponse> {
  htf(htd paramhtd) {}
  
  public void a(CPContratarEmprestimoResponse paramCPContratarEmprestimoResponse) {
    if (paramCPContratarEmprestimoResponse != null)
      try {
        if (paramCPContratarEmprestimoResponse.getCodigoRetorno().equals("0")) {
          hyb.j().h();
          mzp mzp1 = mzp.RELOAD_CONTA;
          mzp mzp2 = mzp.RELOAD_EMPRESTIMOS;
          mzn mzn = new mzn();
          htg htg = new htg(this, paramCPContratarEmprestimoResponse);
          mzn.a(new mzp[] { mzp1, mzp2 }, htg);
          return;
        } 
        htd.a(this.a).b(paramCPContratarEmprestimoResponse);
        return;
      } catch (Exception exception) {
        htd.a(this.a).b(paramCPContratarEmprestimoResponse);
        return;
      }  
    htd.a(this.a).b(paramCPContratarEmprestimoResponse);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\htf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */