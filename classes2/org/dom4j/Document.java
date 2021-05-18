package org.dom4j;

import java.util.Map;
import org.xml.sax.EntityResolver;

public interface Document extends Branch {
  Document addComment(String paramString);
  
  Document addDocType(String paramString1, String paramString2, String paramString3);
  
  Document addProcessingInstruction(String paramString1, String paramString2);
  
  Document addProcessingInstruction(String paramString, Map<String, String> paramMap);
  
  DocumentType getDocType();
  
  EntityResolver getEntityResolver();
  
  Element getRootElement();
  
  String getXMLEncoding();
  
  void setDocType(DocumentType paramDocumentType);
  
  void setEntityResolver(EntityResolver paramEntityResolver);
  
  void setRootElement(Element paramElement);
  
  void setXMLEncoding(String paramString);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\Document.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */