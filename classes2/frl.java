import org.xml.sax.Attributes;

public class frl extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private StringBuffer h = null;
  
  public frl(frk paramfrk) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {}
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("dataAgendamento")) {
      frk.a(this.a).I(this.b.toString());
      return;
    } 
    if (paramString3.equals("horaAgendamento")) {
      frk.a(this.a).L(this.b.toString());
      return;
    } 
    if (paramString3.equals("numProtocoloAgendamento")) {
      frk.a(this.a).Q(this.b.toString());
      return;
    } 
    if (paramString3.equals("tipoAgendamento")) {
      frk.a(this.a).R(this.b.toString());
      return;
    } 
    if (paramString3.equals("autenticacao")) {
      frk.a(this.a).l(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataHoraTransacao")) {
      frk.a(this.a).k(this.b.toString());
      return;
    } 
    if (paramString3.equals("confirmacao")) {
      frk.a(this.a).aq(this.b.toString());
      return;
    } 
    if (paramString3.equals("mensagemErro")) {
      frk.a(this.a).e(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("dataAgendamento") || paramString3.equals("horaAgendamento") || paramString3.equals("numProtocoloAgendamento") || paramString3.equals("tipoAgendamento") || paramString3.equals("autenticacao") || paramString3.equals("dataHoraTransacao") || paramString3.equals("confirmacao") || paramString3.equals("mensagemErro")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\frl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */