package org.dom4j;

import java.util.List;
import org.dom4j.dtd.ExternalDeclaration;
import org.dom4j.dtd.InternalDeclaration;

public interface DocumentType extends Node {
  String getElementName();
  
  List<ExternalDeclaration> getExternalDeclarations();
  
  List<InternalDeclaration> getInternalDeclarations();
  
  String getPublicID();
  
  String getSystemID();
  
  void setElementName(String paramString);
  
  void setExternalDeclarations(List<ExternalDeclaration> paramList);
  
  void setInternalDeclarations(List<InternalDeclaration> paramList);
  
  void setPublicID(String paramString);
  
  void setSystemID(String paramString);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\DocumentType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */