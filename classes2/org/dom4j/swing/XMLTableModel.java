package org.dom4j.swing;

import java.util.List;
import javax.swing.table.AbstractTableModel;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.XPath;

public class XMLTableModel extends AbstractTableModel {
  private XMLTableDefinition definition;
  
  private List rows;
  
  private Object source;
  
  public XMLTableModel(Document paramDocument, Object paramObject) {
    this(XMLTableDefinition.load(paramDocument), paramObject);
  }
  
  public XMLTableModel(Element paramElement, Object paramObject) {
    this(XMLTableDefinition.load(paramElement), paramObject);
  }
  
  public XMLTableModel(XMLTableDefinition paramXMLTableDefinition, Object paramObject) {
    this.definition = paramXMLTableDefinition;
    this.source = paramObject;
  }
  
  public Class getColumnClass(int paramInt) {
    return this.definition.getColumnClass(paramInt);
  }
  
  public int getColumnCount() {
    return this.definition.getColumnCount();
  }
  
  public String getColumnName(int paramInt) {
    XPath xPath = this.definition.getColumnNameXPath(paramInt);
    if (xPath != null) {
      System.out.println("Evaluating column xpath: " + xPath + " value: " + xPath.valueOf(this.source));
      return xPath.valueOf(this.source);
    } 
    return this.definition.getColumnName(paramInt);
  }
  
  public XMLTableDefinition getDefinition() {
    return this.definition;
  }
  
  public int getRowCount() {
    return getRows().size();
  }
  
  public Object getRowValue(int paramInt) {
    return getRows().get(paramInt);
  }
  
  public List getRows() {
    if (this.rows == null)
      this.rows = this.definition.getRowXPath().selectNodes(this.source); 
    return this.rows;
  }
  
  public Object getSource() {
    return this.source;
  }
  
  public Object getValueAt(int paramInt1, int paramInt2) {
    try {
      null = getRowValue(paramInt1);
      return this.definition.getValueAt(null, paramInt2);
    } catch (Exception exception) {
      handleException(exception);
      return null;
    } 
  }
  
  protected void handleException(Exception paramException) {
    System.out.println("Caught: " + paramException);
  }
  
  public void setDefinition(XMLTableDefinition paramXMLTableDefinition) {
    this.definition = paramXMLTableDefinition;
  }
  
  public void setSource(Object paramObject) {
    this.source = paramObject;
    this.rows = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\swing\XMLTableModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */