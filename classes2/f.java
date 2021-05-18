import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.ObjectInputStream;
import java.util.ArrayList;

public class f {
  public static final int a = 1;
  
  protected final String b = "sizes_table";
  
  protected final String c = "size";
  
  protected final String d = "columntable";
  
  public static String a(String paramString, ArrayList<String> paramArrayList) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("CREATE TABLE IF NOT EXISTS ");
    stringBuilder.append(paramString);
    stringBuilder.append(" (");
    stringBuilder.append("id INTEGER PRIMARY KEY AUTOINCREMENT, ");
    for (int i = 0;; i++) {
      if (i >= paramArrayList.size()) {
        stringBuilder.append(")");
        return stringBuilder.toString();
      } 
      if (a(paramArrayList, i)) {
        paramString = " TEXT NOT NULL";
      } else {
        paramString = " TEXT NOT NULL , ";
      } 
      stringBuilder.append(paramArrayList.get(i)).append(paramString);
    } 
  }
  
  public static boolean a(ArrayList<String> paramArrayList, int paramInt) {
    return (paramInt + 1 == paramArrayList.size());
  }
  
  public String a(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("DROP TABLE " + paramString);
    return stringBuilder.toString();
  }
  
  public String a(String paramString1, String paramString2, String paramString3) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("SELECT * FROM ");
    stringBuilder.append(paramString1);
    if (paramString2 == null)
      return stringBuilder.toString(); 
    stringBuilder.append(" WHERE ");
    stringBuilder.append(paramString2);
    stringBuilder.append(" = ");
    stringBuilder.append("'").append(paramString3).append("'");
    return stringBuilder.toString();
  }
  
  public String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    return a(paramString1, new g(this, paramString2), new h(this, paramString3), paramString4, paramString5);
  }
  
  public String a(String paramString1, ArrayList<String> paramArrayList, String paramString2, String paramString3, String paramString4) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("CREATE TABLE IF NOT EXISTS ");
    stringBuilder.append(paramString1);
    stringBuilder.append(" (");
    stringBuilder.append("id INTEGER PRIMARY KEY AUTOINCREMENT, ");
    int i;
    for (i = 0;; i++) {
      if (i >= paramArrayList.size()) {
        stringBuilder.append(paramString2).append(" INT NOT NULL ,");
        stringBuilder.append("FOREIGN KEY(").append(paramString2).append(") REFERENCES ").append(paramString3).append("(").append(paramString4).append(")");
        stringBuilder.append(")");
        return stringBuilder.toString();
      } 
      stringBuilder.append(paramArrayList.get(i)).append(" TEXT NOT NULL , ");
    } 
  }
  
  public String a(String paramString, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2) {
    byte b = 0;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("INSERT INTO ");
    stringBuilder.append(paramString);
    stringBuilder.append("(");
    for (int i = 0;; i++) {
      if (i >= paramArrayList1.size()) {
        stringBuilder.append(") ");
        stringBuilder.append("VALUES ");
        stringBuilder.append("(");
        for (i = b;; i++) {
          if (i >= paramArrayList2.size()) {
            stringBuilder.append(")");
            return stringBuilder.toString();
          } 
          if (a(paramArrayList2, i)) {
            stringBuilder.append("'").append(paramArrayList2.get(i)).append("'");
          } else {
            stringBuilder.append("'").append(paramArrayList2.get(i)).append("', ");
          } 
        } 
        break;
      } 
      if (a(paramArrayList1, i)) {
        stringBuilder.append(paramArrayList1.get(i));
      } else {
        stringBuilder.append(paramArrayList1.get(i)).append(", ");
      } 
    } 
  }
  
  public String a(String paramString1, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, String paramString2, int paramInt) {
    return a(paramString1, paramArrayList1, paramArrayList2, paramString2, paramInt);
  }
  
  public String a(String paramString1, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, String paramString2, String paramString3) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("UPDATE ");
    stringBuilder.append(paramString1);
    stringBuilder.append(" SET ");
    for (int i = 0;; i++) {
      if (i >= paramArrayList1.size()) {
        stringBuilder.append(" WHERE ");
        stringBuilder.append(paramString2);
        stringBuilder.append(" = ");
        stringBuilder.append("'").append(paramString3).append("'");
        return stringBuilder.toString();
      } 
      if (a(paramArrayList1, i)) {
        stringBuilder.append(paramArrayList1.get(i)).append(" = ").append("'").append(paramArrayList2.get(i)).append("'");
      } else {
        stringBuilder.append(paramArrayList1.get(i)).append(" = ").append("'").append(paramArrayList2.get(i)).append("'").append(" , ");
      } 
    } 
  }
  
  public String b(String paramString) {
    return a(paramString, (String)null, (String)null);
  }
  
  public String b(String paramString1, String paramString2, String paramString3) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("DELETE FROM ");
    stringBuilder.append(paramString1);
    stringBuilder.append(" WHERE ");
    stringBuilder.append(paramString2);
    stringBuilder.append(" = ");
    stringBuilder.append(paramString3);
    return stringBuilder.toString();
  }
  
  public Object c(String paramString) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
    (new ax()).a(paramString, dataOutputStream);
    ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
    Object object = objectInputStream.readObject();
    objectInputStream.close();
    return object;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */