import com.santander.app.emprestimo.creditopessoal.domain.CPError;

public abstract class htk<T extends hxv> implements gkv<T> {
  public abstract void a(CPError paramCPError);
  
  public abstract void a(T paramT);
  
  public void b(T paramT) {
    try {
      if (paramT.getCodigoRetorno().equals("0")) {
        a(paramT);
        return;
      } 
      a(new CPError((hxv)paramT));
      return;
    } catch (Exception exception) {
      a((CPError)null);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\htk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */