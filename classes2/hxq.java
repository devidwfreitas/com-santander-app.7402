import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateContract;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoContract;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoMatricula;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoRequiredData;
import java.util.List;

public interface hxq extends hxr {
  List<ConsignadoContract> getContratos();
  
  List<ConsignadoCalculateContract> getContratosCalculate();
  
  int getDiasUteis();
  
  String getDiasUteisFormatted();
  
  List<ConsignadoMatricula> getMatriculaList();
  
  String getNomeConvenio();
  
  String getParcelaFormatted();
  
  String getParcelamentoAdicionalFormatted();
  
  ConsignadoRequiredData getRequiredData();
  
  String getTaxaJurosFormatted();
  
  @hxt
  int getTypeSecure();
  
  String getValorParcelaFormatted();
  
  String getValorParcelasOutrosFormatted();
  
  boolean isEligivel();
  
  boolean isMorno();
  
  boolean isRefinanciamento();
  
  boolean isRequiredDataFlag();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */