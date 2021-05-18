import org.xml.sax.Attributes;

public class fri extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  private frb h = null;
  
  public fri(frh paramfrh) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {}
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("agendamentos")) {
      frh.a(this.a).ai().add(this.h);
      return;
    } 
    if (paramString3.equals("codCanalAgendto")) {
      this.c = false;
      this.h.v(this.b.toString());
      return;
    } 
    if (paramString3.equals("codGrupoAgendto")) {
      this.c = false;
      this.h.w(this.b.toString());
      return;
    } 
    if (paramString3.equals("codStatusAgendto")) {
      this.c = false;
      this.h.x(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataAgendto")) {
      this.c = false;
      this.h.y(this.b.toString());
      return;
    } 
    if (paramString3.equals("codSolicAgendto")) {
      this.c = false;
      this.h.z(this.b.toString());
      return;
    } 
    if (paramString3.equals("descTipoOpera")) {
      this.c = false;
      this.h.A(this.b.toString());
      return;
    } 
    if (paramString3.equals("horaAgendto")) {
      this.c = false;
      this.h.B(this.b.toString());
      return;
    } 
    if (paramString3.equals("nomeTipoAgendto")) {
      this.c = false;
      this.h.C(this.b.toString());
      return;
    } 
    if (paramString3.equals("numProtocoloAgendto")) {
      this.c = false;
      this.h.D(this.b.toString());
      return;
    } 
    if (paramString3.equals("tipoAgendto")) {
      this.c = false;
      this.h.E(this.b.toString());
      return;
    } 
    if (paramString3.equals("valorAgendto")) {
      this.c = false;
      this.h.F(this.b.toString());
      return;
    } 
    if (paramString3.equals("descStatusAgendto")) {
      this.c = false;
      this.h.G(this.b.toString());
      return;
    } 
    if (paramString3.equals("dataSolicAgendto")) {
      this.c = false;
      this.h.H(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("agendamentos"))
      this.h = new frb(); 
    if (paramString3.equals("codCanalAgendto") || paramString3.equals("codGrupoAgendto") || paramString3.equals("codStatusAgendto") || paramString3.equals("dataAgendto") || paramString3.equals("codSolicAgendto") || paramString3.equals("descTipoOpera") || paramString3.equals("horaAgendto") || paramString3.equals("nomeTipoAgendto") || paramString3.equals("numProtocoloAgendto") || paramString3.equals("tipoAgendto") || paramString3.equals("valorAgendto") || paramString3.equals("descStatusAgendto") || paramString3.equals("dataSolicAgendto")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fri.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */