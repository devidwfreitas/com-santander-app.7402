import org.xml.sax.Attributes;

public class frp extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private frb h = null;
  
  public frp(fro paramfro) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {}
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listaAgendamentos")) {
      fro.a(this.a).ai().add(this.h);
      return;
    } 
    if (paramString3.equals("dataAgendamento")) {
      this.c = false;
      this.h.I(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("dataSolicitada")) {
      this.c = false;
      this.h.J(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("descricao")) {
      this.c = false;
      this.h.K(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("horaAgendamento")) {
      this.c = false;
      this.h.L(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("horaSolicitada")) {
      this.c = false;
      this.h.M(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("numProtocolo")) {
      this.c = false;
      this.h.N(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("status")) {
      this.c = false;
      this.h.O(this.b.toString().trim());
      return;
    } 
    if (paramString3.equals("valor")) {
      this.c = false;
      this.h.P(this.b.toString().trim());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listaAgendamentos"))
      this.h = new frb(); 
    if (paramString3.equals("dataAgendamento") || paramString3.equals("dataSolicitada") || paramString3.equals("descricao") || paramString3.equals("horaAgendamento") || paramString3.equals("horaSolicitada") || paramString3.equals("numProtocolo") || paramString3.equals("status") || paramString3.equals("valor")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\frp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */