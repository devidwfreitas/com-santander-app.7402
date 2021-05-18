package org.dom4j.io;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.Writer;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLEventFactory;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.Comment;
import javax.xml.stream.events.DTD;
import javax.xml.stream.events.EndDocument;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.Namespace;
import javax.xml.stream.events.ProcessingInstruction;
import javax.xml.stream.events.StartDocument;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.util.XMLEventConsumer;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;

public class STAXEventWriter {
  private XMLEventConsumer consumer;
  
  private XMLEventFactory factory = XMLEventFactory.newInstance();
  
  private XMLOutputFactory outputFactory = XMLOutputFactory.newInstance();
  
  public STAXEventWriter() {}
  
  public STAXEventWriter(File paramFile) {
    this.consumer = this.outputFactory.createXMLEventWriter(new FileWriter(paramFile));
  }
  
  public STAXEventWriter(OutputStream paramOutputStream) {
    this.consumer = this.outputFactory.createXMLEventWriter(paramOutputStream);
  }
  
  public STAXEventWriter(Writer paramWriter) {
    this.consumer = this.outputFactory.createXMLEventWriter(paramWriter);
  }
  
  public STAXEventWriter(XMLEventConsumer paramXMLEventConsumer) {
    this.consumer = paramXMLEventConsumer;
  }
  
  private EntityReference createEntityReference(Entity paramEntity) {
    return this.factory.createEntityReference(paramEntity.getName(), null);
  }
  
  public Attribute createAttribute(Attribute paramAttribute) {
    QName qName = createQName(paramAttribute.getQName());
    String str = paramAttribute.getValue();
    return this.factory.createAttribute(qName, str);
  }
  
  public Characters createCharacters(CDATA paramCDATA) {
    return this.factory.createCData(paramCDATA.getText());
  }
  
  public Characters createCharacters(Text paramText) {
    return this.factory.createCharacters(paramText.getText());
  }
  
  public Comment createComment(Comment paramComment) {
    return this.factory.createComment(paramComment.getText());
  }
  
  public DTD createDTD(DocumentType paramDocumentType) {
    StringWriter stringWriter = new StringWriter();
    try {
      paramDocumentType.write(stringWriter);
      return this.factory.createDTD(stringWriter.toString());
    } catch (IOException iOException) {
      throw new RuntimeException("Error writing DTD", iOException);
    } 
  }
  
  public EndDocument createEndDocument(Document paramDocument) {
    return this.factory.createEndDocument();
  }
  
  public EndElement createEndElement(Element paramElement) {
    QName qName = createQName(paramElement.getQName());
    STAXEventWriter$NamespaceIterator sTAXEventWriter$NamespaceIterator = new STAXEventWriter$NamespaceIterator(this, paramElement.declaredNamespaces().iterator());
    return this.factory.createEndElement(qName, sTAXEventWriter$NamespaceIterator);
  }
  
  public Namespace createNamespace(Namespace paramNamespace) {
    String str2 = paramNamespace.getPrefix();
    String str1 = paramNamespace.getURI();
    return this.factory.createNamespace(str2, str1);
  }
  
  public ProcessingInstruction createProcessingInstruction(ProcessingInstruction paramProcessingInstruction) {
    String str2 = paramProcessingInstruction.getTarget();
    String str1 = paramProcessingInstruction.getText();
    return this.factory.createProcessingInstruction(str2, str1);
  }
  
  public QName createQName(QName paramQName) {
    return new QName(paramQName.getNamespaceURI(), paramQName.getName(), paramQName.getNamespacePrefix());
  }
  
  public StartDocument createStartDocument(Document paramDocument) {
    String str = paramDocument.getXMLEncoding();
    return (str != null) ? this.factory.createStartDocument(str) : this.factory.createStartDocument();
  }
  
  public StartElement createStartElement(Element paramElement) {
    QName qName = createQName(paramElement.getQName());
    STAXEventWriter$AttributeIterator sTAXEventWriter$AttributeIterator = new STAXEventWriter$AttributeIterator(this, paramElement.attributeIterator());
    STAXEventWriter$NamespaceIterator sTAXEventWriter$NamespaceIterator = new STAXEventWriter$NamespaceIterator(this, paramElement.declaredNamespaces().iterator());
    return this.factory.createStartElement(qName, sTAXEventWriter$AttributeIterator, sTAXEventWriter$NamespaceIterator);
  }
  
  public XMLEventConsumer getConsumer() {
    return this.consumer;
  }
  
  public XMLEventFactory getEventFactory() {
    return this.factory;
  }
  
  public void setConsumer(XMLEventConsumer paramXMLEventConsumer) {
    this.consumer = paramXMLEventConsumer;
  }
  
  public void setEventFactory(XMLEventFactory paramXMLEventFactory) {
    this.factory = paramXMLEventFactory;
  }
  
  public void writeAttribute(Attribute paramAttribute) {
    this.consumer.add(createAttribute(paramAttribute));
  }
  
  public void writeCDATA(CDATA paramCDATA) {
    this.consumer.add(createCharacters(paramCDATA));
  }
  
  public void writeChildNodes(Branch paramBranch) {
    int i = 0;
    int j = paramBranch.nodeCount();
    while (i < j) {
      writeNode(paramBranch.node(i));
      i++;
    } 
  }
  
  public void writeComment(Comment paramComment) {
    this.consumer.add(createComment(paramComment));
  }
  
  public void writeDocument(Document paramDocument) {
    this.consumer.add(createStartDocument(paramDocument));
    writeChildNodes((Branch)paramDocument);
    this.consumer.add(createEndDocument(paramDocument));
  }
  
  public void writeDocumentType(DocumentType paramDocumentType) {
    this.consumer.add(createDTD(paramDocumentType));
  }
  
  public void writeElement(Element paramElement) {
    this.consumer.add(createStartElement(paramElement));
    writeChildNodes((Branch)paramElement);
    this.consumer.add(createEndElement(paramElement));
  }
  
  public void writeEntity(Entity paramEntity) {
    this.consumer.add(createEntityReference(paramEntity));
  }
  
  public void writeNamespace(Namespace paramNamespace) {
    this.consumer.add(createNamespace(paramNamespace));
  }
  
  public void writeNode(Node paramNode) {
    switch (STAXEventWriter$1.$SwitchMap$org$dom4j$NodeType[paramNode.getNodeTypeEnum().ordinal()]) {
      default:
        throw new XMLStreamException("Unsupported DOM4J Node: " + paramNode);
      case 1:
        writeElement((Element)paramNode);
        return;
      case 2:
        writeText((Text)paramNode);
        return;
      case 3:
        writeAttribute((Attribute)paramNode);
        return;
      case 4:
        writeNamespace((Namespace)paramNode);
        return;
      case 5:
        writeComment((Comment)paramNode);
        return;
      case 6:
        writeCDATA((CDATA)paramNode);
        return;
      case 7:
        writeProcessingInstruction((ProcessingInstruction)paramNode);
        return;
      case 8:
        writeEntity((Entity)paramNode);
        return;
      case 9:
        writeDocument((Document)paramNode);
        return;
      case 10:
        break;
    } 
    writeDocumentType((DocumentType)paramNode);
  }
  
  public void writeProcessingInstruction(ProcessingInstruction paramProcessingInstruction) {
    this.consumer.add(createProcessingInstruction(paramProcessingInstruction));
  }
  
  public void writeText(Text paramText) {
    this.consumer.add(createCharacters(paramText));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\STAXEventWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */