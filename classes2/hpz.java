import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoDadoObrigatorio;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoDadoObrigatorio.Type;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoMatricula;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoRequiredData;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoRequiredField;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

class hpz {
  private static final String e = "matricula";
  
  private static final String f = "dataAdmissao";
  
  private static final String g = "codigoUnicoAverbador";
  
  private static final String h = "codigoUnicoMargem";
  
  private static final String i = "clientRegistrationId";
  
  private static final String j = "hireDate";
  
  private static final String k = "onlineAverbationCode";
  
  private static final String l = "onlineMarginCode";
  
  private boolean a;
  
  private ConsignadoRequiredData b;
  
  private List<ConsignadoMatricula> c;
  
  private List<ConsignadoDadoObrigatorio> d;
  
  hpz(@NonNull hxq paramhxq) {
    this.a = paramhxq.isRequiredDataFlag();
    this.b = paramhxq.getRequiredData();
    this.c = paramhxq.getMatriculaList();
  }
  
  private ConsignadoDadoObrigatorio a(String paramString) {
    for (ConsignadoDadoObrigatorio consignadoDadoObrigatorio : this.d) {
      if (consignadoDadoObrigatorio.getKey().equalsIgnoreCase(paramString))
        return consignadoDadoObrigatorio; 
    } 
    return null;
  }
  
  private String a(ConsignadoRequiredField paramConsignadoRequiredField) {
    return paramConsignadoRequiredField.getName().equalsIgnoreCase("dataAdmissao") ? "Data de admissão" : (paramConsignadoRequiredField.getName().equalsIgnoreCase("codigoUnicoAverbador") ? "Código de averbação" : (paramConsignadoRequiredField.getName().equalsIgnoreCase("codigoUnicoMargem") ? "Código de consulta de margem" : paramConsignadoRequiredField.getName()));
  }
  
  private String b(ConsignadoRequiredField paramConsignadoRequiredField) {
    return paramConsignadoRequiredField.getName().equalsIgnoreCase("matricula") ? "clientRegistrationId" : (paramConsignadoRequiredField.getName().equalsIgnoreCase("dataAdmissao") ? "hireDate" : (paramConsignadoRequiredField.getName().equalsIgnoreCase("codigoUnicoAverbador") ? "onlineAverbationCode" : (paramConsignadoRequiredField.getName().equalsIgnoreCase("codigoUnicoMargem") ? "onlineMarginCode" : paramConsignadoRequiredField.getName())));
  }
  
  private boolean c(ConsignadoRequiredField paramConsignadoRequiredField) {
    return (paramConsignadoRequiredField.getName().equalsIgnoreCase("codigoUnicoAverbador") || paramConsignadoRequiredField.getName().equalsIgnoreCase("codigoUnicoMargem"));
  }
  
  @Type
  private int d(ConsignadoRequiredField paramConsignadoRequiredField) {
    return paramConsignadoRequiredField.getName().equalsIgnoreCase("matricula") ? 2 : 0;
  }
  
  private ConsignadoDadoObrigatorio e() {
    if (this.c != null && this.c.size() > 1) {
      ArrayList<String> arrayList = new ArrayList();
      Iterator<ConsignadoMatricula> iterator = this.c.iterator();
      while (iterator.hasNext())
        arrayList.add(((ConsignadoMatricula)iterator.next()).getRegistrationId()); 
      return (new ConsignadoDadoObrigatorio(1, "clientRegistrationId")).setHint("Matrícula").setData(arrayList);
    } 
    return null;
  }
  
  private void f() {
    int i = 0;
    ArrayList<ConsignadoDadoObrigatorio> arrayList = new ArrayList();
    String[] arrayOfString = new String[4];
    arrayOfString[0] = "clientRegistrationId";
    arrayOfString[1] = "hireDate";
    arrayOfString[2] = "onlineAverbationCode";
    arrayOfString[3] = "onlineMarginCode";
    int j = arrayOfString.length;
    while (i < j) {
      ConsignadoDadoObrigatorio consignadoDadoObrigatorio = a(arrayOfString[i]);
      if (consignadoDadoObrigatorio != null)
        arrayList.add(consignadoDadoObrigatorio); 
      i++;
    } 
    this.d.clear();
    this.d.addAll(arrayList);
  }
  
  List<ConsignadoDadoObrigatorio> a() {
    this.d = new ArrayList<ConsignadoDadoObrigatorio>();
    ConsignadoDadoObrigatorio consignadoDadoObrigatorio = e();
    if (consignadoDadoObrigatorio != null)
      this.d.add(consignadoDadoObrigatorio); 
    if (this.a)
      for (ConsignadoRequiredField consignadoRequiredField : this.b.getRequiredFields()) {
        String str1 = b(consignadoRequiredField);
        int i = d(consignadoRequiredField);
        String str2 = a(consignadoRequiredField);
        boolean bool = c(consignadoRequiredField);
        ConsignadoDadoObrigatorio consignadoDadoObrigatorio1 = (new ConsignadoDadoObrigatorio(i, str1)).setHint(str2).setUseAlert(bool);
        this.d.add(consignadoDadoObrigatorio1);
      }  
    f();
    return this.d;
  }
  
  boolean b() {
    Iterator<ConsignadoDadoObrigatorio> iterator = this.d.iterator();
    while (iterator.hasNext()) {
      if (TextUtils.isEmpty(((ConsignadoDadoObrigatorio)iterator.next()).getValue()))
        return false; 
    } 
    return true;
  }
  
  JSONObject c() {
    JSONObject jSONObject = new JSONObject();
    for (ConsignadoDadoObrigatorio consignadoDadoObrigatorio : this.d)
      jSONObject.put(consignadoDadoObrigatorio.getKey(), consignadoDadoObrigatorio.getValue()); 
    return jSONObject;
  }
  
  String d() {
    for (ConsignadoDadoObrigatorio consignadoDadoObrigatorio : this.d) {
      if (consignadoDadoObrigatorio.getKey().equals("onlineAverbationCode"))
        return consignadoDadoObrigatorio.getValue(); 
    } 
    return "";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */