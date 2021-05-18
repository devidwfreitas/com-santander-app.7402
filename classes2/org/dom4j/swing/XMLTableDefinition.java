package org.dom4j.swing;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.XPath;
import org.jaxen.VariableContext;

public class XMLTableDefinition implements Serializable, VariableContext {
  private XMLTableColumnDefinition[] columnArray;
  
  private Map columnNameIndex;
  
  private List columns = new ArrayList();
  
  private Object rowValue;
  
  private XPath rowXPath;
  
  private VariableContext variableContext;
  
  public static XMLTableDefinition load(Document paramDocument) {
    return load(paramDocument.getRootElement());
  }
  
  public static XMLTableDefinition load(Element paramElement) {
    XMLTableDefinition xMLTableDefinition = new XMLTableDefinition();
    xMLTableDefinition.setRowExpression(paramElement.attributeValue("select"));
    Iterator<Element> iterator = paramElement.elementIterator("column");
    while (iterator.hasNext()) {
      Element element = iterator.next();
      String str1 = element.attributeValue("select");
      String str2 = element.getText();
      String str3 = element.attributeValue("type", "string");
      String str4 = element.attributeValue("columnNameXPath");
      int i = XMLTableColumnDefinition.parseType(str3);
      if (str4 != null) {
        xMLTableDefinition.addColumnWithXPathName(str4, str1, i);
        continue;
      } 
      xMLTableDefinition.addColumn(str2, str1, i);
    } 
    return xMLTableDefinition;
  }
  
  public void addColumn(String paramString1, String paramString2) {
    addColumn(paramString1, paramString2, 0);
  }
  
  public void addColumn(String paramString1, String paramString2, int paramInt) {
    addColumn(new XMLTableColumnDefinition(paramString1, createColumnXPath(paramString2), paramInt));
  }
  
  public void addColumn(XMLTableColumnDefinition paramXMLTableColumnDefinition) {
    clearCaches();
    this.columns.add(paramXMLTableColumnDefinition);
  }
  
  public void addColumnWithXPathName(String paramString1, String paramString2, int paramInt) {
    addColumn(new XMLTableColumnDefinition(createColumnXPath(paramString1), createColumnXPath(paramString2), paramInt));
  }
  
  public void addNumberColumn(String paramString1, String paramString2) {
    addColumn(paramString1, paramString2, 2);
  }
  
  public void addStringColumn(String paramString1, String paramString2) {
    addColumn(paramString1, paramString2, 1);
  }
  
  public void clear() {
    clearCaches();
    this.columns.clear();
  }
  
  protected void clearCaches() {
    this.columnArray = null;
    this.columnNameIndex = null;
  }
  
  protected XPath createColumnXPath(String paramString) {
    XPath xPath = createXPath(paramString);
    xPath.setVariableContext(this);
    return xPath;
  }
  
  protected XPath createXPath(String paramString) {
    return DocumentHelper.createXPath(paramString);
  }
  
  public XMLTableColumnDefinition getColumn(int paramInt) {
    if (this.columnArray == null) {
      this.columnArray = new XMLTableColumnDefinition[this.columns.size()];
      this.columns.toArray((Object[])this.columnArray);
    } 
    return this.columnArray[paramInt];
  }
  
  public XMLTableColumnDefinition getColumn(String paramString) {
    if (this.columnNameIndex == null) {
      this.columnNameIndex = new HashMap<Object, Object>();
      for (XMLTableColumnDefinition xMLTableColumnDefinition : this.columns)
        this.columnNameIndex.put(xMLTableColumnDefinition.getName(), xMLTableColumnDefinition); 
    } 
    return (XMLTableColumnDefinition)this.columnNameIndex.get(paramString);
  }
  
  public Class getColumnClass(int paramInt) {
    return getColumn(paramInt).getColumnClass();
  }
  
  public int getColumnCount() {
    return this.columns.size();
  }
  
  public String getColumnName(int paramInt) {
    return getColumn(paramInt).getName();
  }
  
  public XPath getColumnNameXPath(int paramInt) {
    return getColumn(paramInt).getColumnNameXPath();
  }
  
  public XPath getColumnXPath(int paramInt) {
    return getColumn(paramInt).getXPath();
  }
  
  public XPath getRowXPath() {
    return this.rowXPath;
  }
  
  public Object getValueAt(Object paramObject, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_2
    //   4: invokevirtual getColumn : (I)Lorg/dom4j/swing/XMLTableColumnDefinition;
    //   7: astore_3
    //   8: aload_0
    //   9: monitorenter
    //   10: aload_0
    //   11: aload_1
    //   12: putfield rowValue : Ljava/lang/Object;
    //   15: aload_3
    //   16: aload_1
    //   17: invokevirtual getValue : (Ljava/lang/Object;)Ljava/lang/Object;
    //   20: astore_1
    //   21: aload_0
    //   22: aconst_null
    //   23: putfield rowValue : Ljava/lang/Object;
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_1
    //   31: areturn
    //   32: astore_1
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: athrow
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Exception table:
    //   from	to	target	type
    //   2	10	37	finally
    //   10	28	32	finally
    //   33	35	32	finally
    //   35	37	37	finally
  }
  
  public Object getVariableValue(String paramString1, String paramString2, String paramString3) {
    XMLTableColumnDefinition xMLTableColumnDefinition = getColumn(paramString3);
    return (xMLTableColumnDefinition != null) ? xMLTableColumnDefinition.getValue(this.rowValue) : null;
  }
  
  protected void handleException(Exception paramException) {
    System.out.println("Caught: " + paramException);
  }
  
  public void removeColumn(XMLTableColumnDefinition paramXMLTableColumnDefinition) {
    clearCaches();
    this.columns.remove(paramXMLTableColumnDefinition);
  }
  
  public void setRowExpression(String paramString) {
    setRowXPath(createXPath(paramString));
  }
  
  public void setRowXPath(XPath paramXPath) {
    this.rowXPath = paramXPath;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\swing\XMLTableDefinition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */