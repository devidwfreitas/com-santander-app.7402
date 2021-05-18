package org.dom4j;

import java.io.StringReader;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.dom4j.io.SAXReader;
import org.dom4j.rule.Pattern;
import org.jaxen.VariableContext;
import org.xml.sax.InputSource;

public final class DocumentHelper {
  public static Attribute createAttribute(Element paramElement, String paramString1, String paramString2) {
    return getDocumentFactory().createAttribute(paramElement, paramString1, paramString2);
  }
  
  public static Attribute createAttribute(Element paramElement, QName paramQName, String paramString) {
    return getDocumentFactory().createAttribute(paramElement, paramQName, paramString);
  }
  
  public static CDATA createCDATA(String paramString) {
    return DocumentFactory.getInstance().createCDATA(paramString);
  }
  
  public static Comment createComment(String paramString) {
    return DocumentFactory.getInstance().createComment(paramString);
  }
  
  public static Document createDocument() {
    return getDocumentFactory().createDocument();
  }
  
  public static Document createDocument(Element paramElement) {
    return getDocumentFactory().createDocument(paramElement);
  }
  
  public static Element createElement(String paramString) {
    return getDocumentFactory().createElement(paramString);
  }
  
  public static Element createElement(QName paramQName) {
    return getDocumentFactory().createElement(paramQName);
  }
  
  public static Entity createEntity(String paramString1, String paramString2) {
    return DocumentFactory.getInstance().createEntity(paramString1, paramString2);
  }
  
  public static Namespace createNamespace(String paramString1, String paramString2) {
    return DocumentFactory.getInstance().createNamespace(paramString1, paramString2);
  }
  
  public static Pattern createPattern(String paramString) {
    return getDocumentFactory().createPattern(paramString);
  }
  
  public static ProcessingInstruction createProcessingInstruction(String paramString1, String paramString2) {
    return getDocumentFactory().createProcessingInstruction(paramString1, paramString2);
  }
  
  public static ProcessingInstruction createProcessingInstruction(String paramString, Map paramMap) {
    return getDocumentFactory().createProcessingInstruction(paramString, paramMap);
  }
  
  public static QName createQName(String paramString) {
    return getDocumentFactory().createQName(paramString);
  }
  
  public static QName createQName(String paramString, Namespace paramNamespace) {
    return getDocumentFactory().createQName(paramString, paramNamespace);
  }
  
  public static Text createText(String paramString) {
    return DocumentFactory.getInstance().createText(paramString);
  }
  
  public static XPath createXPath(String paramString) {
    return getDocumentFactory().createXPath(paramString);
  }
  
  public static XPath createXPath(String paramString, VariableContext paramVariableContext) {
    return getDocumentFactory().createXPath(paramString, paramVariableContext);
  }
  
  public static NodeFilter createXPathFilter(String paramString) {
    return getDocumentFactory().createXPathFilter(paramString);
  }
  
  private static DocumentFactory getDocumentFactory() {
    return DocumentFactory.getInstance();
  }
  
  private static String getEncoding(String paramString) {
    String str1 = null;
    String str2 = paramString.trim();
    paramString = str1;
    if (str2.startsWith("<?xml")) {
      StringTokenizer stringTokenizer = new StringTokenizer(str2.substring(0, str2.indexOf("?>")), " =\"'");
      while (true) {
        paramString = str1;
        if (stringTokenizer.hasMoreTokens()) {
          if ("encoding".equals(stringTokenizer.nextToken())) {
            paramString = str1;
            if (stringTokenizer.hasMoreTokens())
              paramString = stringTokenizer.nextToken(); 
            break;
          } 
          continue;
        } 
        break;
      } 
    } 
    return paramString;
  }
  
  public static Element makeElement(Branch paramBranch, String paramString) {
    Element element;
    StringTokenizer stringTokenizer = new StringTokenizer(paramString, "/");
    if (paramBranch instanceof Document) {
      Document document = (Document)paramBranch;
      Element element1 = document.getRootElement();
      String str1 = stringTokenizer.nextToken();
      paramBranch = element1;
      if (element1 == null)
        paramBranch = document.addElement(str1); 
    } else {
      paramBranch = paramBranch;
    } 
    paramString = null;
    Branch branch = paramBranch;
    String str = paramString;
    while (stringTokenizer.hasMoreTokens()) {
      Element element1;
      String str1 = stringTokenizer.nextToken();
      if (str1.indexOf(':') > 0) {
        element1 = branch.element(branch.getQName(str1));
      } else {
        element1 = branch.element(str1);
      } 
      element = element1;
      if (element1 == null)
        element = branch.addElement(str1); 
      branch = element;
    } 
    return element;
  }
  
  public static Document parseText(String paramString) {
    SAXReader sAXReader = new SAXReader();
    String str = getEncoding(paramString);
    InputSource inputSource = new InputSource(new StringReader(paramString));
    inputSource.setEncoding(str);
    Document document = sAXReader.read(inputSource);
    if (document.getXMLEncoding() == null)
      document.setXMLEncoding(str); 
    return document;
  }
  
  public static List<? extends Node> selectNodes(String paramString, List<? extends Node> paramList) {
    return createXPath(paramString).selectNodes(paramList);
  }
  
  public static List<? extends Node> selectNodes(String paramString, Node paramNode) {
    return createXPath(paramString).selectNodes(paramNode);
  }
  
  public static void sort(List<? extends Node> paramList, String paramString) {
    createXPath(paramString).sort(paramList);
  }
  
  public static void sort(List<? extends Node> paramList, String paramString, boolean paramBoolean) {
    createXPath(paramString).sort(paramList, paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\DocumentHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */