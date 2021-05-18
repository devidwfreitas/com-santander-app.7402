package org.dom4j.swing;

import java.io.Serializable;
import org.dom4j.DocumentHelper;
import org.dom4j.Node;
import org.dom4j.XPath;

public class XMLTableColumnDefinition implements Serializable {
  public static final int NODE_TYPE = 3;
  
  public static final int NUMBER_TYPE = 2;
  
  public static final int OBJECT_TYPE = 0;
  
  public static final int STRING_TYPE = 1;
  
  private XPath columnNameXPath;
  
  private String name;
  
  private int type;
  
  private XPath xpath;
  
  public XMLTableColumnDefinition() {}
  
  public XMLTableColumnDefinition(String paramString1, String paramString2, int paramInt) {
    this.name = paramString1;
    this.type = paramInt;
    this.xpath = createXPath(paramString2);
  }
  
  public XMLTableColumnDefinition(String paramString, XPath paramXPath, int paramInt) {
    this.name = paramString;
    this.xpath = paramXPath;
    this.type = paramInt;
  }
  
  public XMLTableColumnDefinition(XPath paramXPath1, XPath paramXPath2, int paramInt) {
    this.xpath = paramXPath2;
    this.columnNameXPath = paramXPath1;
    this.type = paramInt;
  }
  
  public static int parseType(String paramString) {
    if (paramString != null && paramString.length() > 0) {
      if (paramString.equals("string"))
        return 1; 
      if (paramString.equals("number"))
        return 2; 
      if (paramString.equals("node"))
        return 3; 
    } 
    return 0;
  }
  
  protected XPath createXPath(String paramString) {
    return DocumentHelper.createXPath(paramString);
  }
  
  public Class getColumnClass() {
    switch (this.type) {
      default:
        return Object.class;
      case 1:
        return String.class;
      case 2:
        return Number.class;
      case 3:
        break;
    } 
    return Node.class;
  }
  
  public XPath getColumnNameXPath() {
    return this.columnNameXPath;
  }
  
  public String getName() {
    return this.name;
  }
  
  public int getType() {
    return this.type;
  }
  
  public Object getValue(Object paramObject) {
    switch (this.type) {
      default:
        return this.xpath.evaluate(paramObject);
      case 1:
        return this.xpath.valueOf(paramObject);
      case 2:
        return this.xpath.numberValueOf(paramObject);
      case 3:
        break;
    } 
    return this.xpath.selectSingleNode(paramObject);
  }
  
  public XPath getXPath() {
    return this.xpath;
  }
  
  protected void handleException(Exception paramException) {
    System.out.println("Caught: " + paramException);
  }
  
  public void setColumnNameXPath(XPath paramXPath) {
    this.columnNameXPath = paramXPath;
  }
  
  public void setName(String paramString) {
    this.name = paramString;
  }
  
  public void setType(int paramInt) {
    this.type = paramInt;
  }
  
  public void setXPath(XPath paramXPath) {
    this.xpath = paramXPath;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\swing\XMLTableColumnDefinition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */