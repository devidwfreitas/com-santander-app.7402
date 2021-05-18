import android.text.TextUtils;
import java.io.Serializable;

public class fuu extends fvu implements Serializable, Cloneable, Comparable<fuu> {
  private static final long serialVersionUID = 1L;
  
  private String agencia;
  
  private String autorizado;
  
  private String banco;
  
  private String cpf;
  
  private String cuenta;
  
  private String descricao;
  
  private fuy extracto;
  
  private fuy extractoHome;
  
  private String finalidade;
  
  private String indicadorContaConjunta;
  
  private String indicadorMesmoTitular;
  
  private boolean isCuentaNueva;
  
  private String ispbBanco;
  
  private fva lanzamientoFuturo;
  
  private String nomeBanco;
  
  private String numeroDocumento;
  
  private int spinnerBanco;
  
  private String tipoConta;
  
  private String tipoDocumento;
  
  private String valor;
  
  public static long getSerialversionuid() {
    return 1L;
  }
  
  public int compareTo(fuu paramfuu) {
    return getDescricao().compareTo(paramfuu.getDescricao());
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof fuu) {
      paramObject = paramObject;
      return this.cuenta.equals(((fuu)paramObject).cuenta);
    } 
    return false;
  }
  
  public String getAgencia() {
    return this.agencia;
  }
  
  public String getAutorizado() {
    return this.autorizado;
  }
  
  public String getBanco() {
    return this.banco;
  }
  
  public String getCpf() {
    return this.cpf;
  }
  
  public String getCuenta() {
    return this.cuenta;
  }
  
  public String getDescricao() {
    return this.descricao;
  }
  
  public fuy getExtracto() {
    return this.extracto;
  }
  
  public fuy getExtractoHome() {
    return this.extractoHome;
  }
  
  public String getFinalidade() {
    return this.finalidade;
  }
  
  public String getIndicadorContaConjunta() {
    return this.indicadorContaConjunta;
  }
  
  public String getIndicadorMesmoTitular() {
    return this.indicadorMesmoTitular;
  }
  
  public String getIspbBanco() {
    return this.ispbBanco;
  }
  
  public fva getLanzamientoFuturo() {
    return this.lanzamientoFuturo;
  }
  
  public String getNomeBanco() {
    return this.nomeBanco;
  }
  
  public String getNumeroDocumento() {
    return this.numeroDocumento;
  }
  
  public int getSpinnerBanco() {
    return this.spinnerBanco;
  }
  
  public String getTipoConta() {
    return this.tipoConta;
  }
  
  public String getTipoDocumento() {
    return this.tipoDocumento;
  }
  
  public String getValor() {
    return !TextUtils.isEmpty(this.valor) ? this.valor : "0";
  }
  
  public boolean isCuentaNueva() {
    return this.isCuentaNueva;
  }
  
  public void setAgencia(String paramString) {
    this.agencia = paramString;
  }
  
  public void setAutorizado(String paramString) {
    this.autorizado = paramString;
  }
  
  public void setBanco(String paramString) {
    this.banco = paramString;
  }
  
  public void setCpf(String paramString) {
    this.cpf = paramString;
  }
  
  public void setCuenta(String paramString) {
    this.cuenta = paramString;
  }
  
  public void setCuentaNueva(boolean paramBoolean) {
    this.isCuentaNueva = paramBoolean;
  }
  
  public void setDescricao(String paramString) {
    this.descricao = paramString;
  }
  
  public void setExtracto(fuy paramfuy) {
    this.extracto = paramfuy;
  }
  
  public void setExtractoHome(fuy paramfuy) {
    this.extractoHome = paramfuy;
  }
  
  public void setFinalidade(String paramString) {
    this.finalidade = paramString;
  }
  
  public void setIndicadorContaConjunta(String paramString) {
    this.indicadorContaConjunta = paramString;
  }
  
  public void setIndicadorMesmoTitular(String paramString) {
    this.indicadorMesmoTitular = paramString;
  }
  
  public void setIspbBanco(String paramString) {
    this.ispbBanco = paramString;
  }
  
  public void setLanzamientoFuturo(fva paramfva) {
    this.lanzamientoFuturo = paramfva;
  }
  
  public void setNomeBanco(String paramString) {
    this.nomeBanco = paramString;
  }
  
  public void setNumeroDocumento(String paramString) {
    this.numeroDocumento = paramString;
  }
  
  public void setSpinnerBanco(int paramInt) {
    this.spinnerBanco = paramInt;
  }
  
  public void setTipoConta(String paramString) {
    this.tipoConta = paramString;
  }
  
  public void setTipoDocumento(String paramString) {
    this.tipoDocumento = paramString;
  }
  
  public void setValor(String paramString) {
    this.valor = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fuu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */