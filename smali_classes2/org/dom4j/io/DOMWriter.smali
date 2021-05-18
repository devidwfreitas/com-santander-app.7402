.class public Lorg/dom4j/io/DOMWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

.field private static loggedWarning:Z


# instance fields
.field private domDocumentClass:Ljava/lang/Class;

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    sput-boolean v2, Lorg/dom4j/io/DOMWriter;->loggedWarning:Z

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "org.apache.xerces.dom.DocumentImpl"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "gnu.xml.dom.DomDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "org.apache.crimson.tree.XmlDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sun.xml.tree.XmlDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "oracle.xml.parser.v2.XMLDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "oracle.xml.parser.XMLDocument"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "org.dom4j.dom.DOMDocument"

    aput-object v2, v0, v1

    sput-object v0, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 50
    iput-object p1, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    .line 51
    return-void
.end method


# virtual methods
.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    .line 230
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 231
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 140
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 142
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_7

    .line 143
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 145
    instance-of v3, v0, Lorg/dom4j/Element;

    if-eqz v3, :cond_1

    .line 146
    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Element;)V

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 147
    :cond_1
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 148
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_2
    instance-of v3, v0, Lorg/dom4j/Text;

    if-eqz v3, :cond_3

    .line 150
    check-cast v0, Lorg/dom4j/Text;

    .line 151
    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_3
    instance-of v3, v0, Lorg/dom4j/CDATA;

    if-eqz v3, :cond_4

    .line 153
    check-cast v0, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/CDATA;)V

    goto :goto_1

    .line 154
    :cond_4
    instance-of v3, v0, Lorg/dom4j/Comment;

    if-eqz v3, :cond_5

    .line 155
    check-cast v0, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Comment;)V

    goto :goto_1

    .line 156
    :cond_5
    instance-of v3, v0, Lorg/dom4j/Entity;

    if-eqz v3, :cond_6

    .line 157
    check-cast v0, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Entity;)V

    goto :goto_1

    .line 158
    :cond_6
    instance-of v3, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v3, :cond_0

    .line 159
    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_1

    .line 163
    :cond_7
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/CDATA;)V
    .locals 1

    .prologue
    .line 215
    invoke-interface {p3}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 217
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 218
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Comment;)V
    .locals 1

    .prologue
    .line 222
    invoke-interface {p3}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    .line 224
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 225
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Element;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-interface {p3}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-interface {p3}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-interface {p1, v0, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 172
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v4

    .line 175
    invoke-interface {p3}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    .line 177
    invoke-virtual {p0, v0}, Lorg/dom4j/io/DOMWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v2, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 179
    invoke-virtual {p0, v3, v0}, Lorg/dom4j/io/DOMWriter;->writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V

    .line 183
    :cond_0
    invoke-interface {p3}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v5

    .line 185
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    .line 186
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    .line 188
    invoke-virtual {p0, v0}, Lorg/dom4j/io/DOMWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 189
    iget-object v7, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v7, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 190
    invoke-virtual {p0, v3, v0}, Lorg/dom4j/io/DOMWriter;->writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V

    .line 185
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 195
    :cond_2
    invoke-interface {p3}, Lorg/dom4j/Element;->attributeCount()I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_3

    .line 196
    invoke-interface {p3, v0}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 197
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-interface {v1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-interface {v3, v5, v6, v1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_3
    invoke-interface {p3}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    .line 206
    invoke-interface {p2, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 208
    :goto_2
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 209
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto :goto_2

    .line 211
    :cond_4
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/Entity;)V
    .locals 1

    .prologue
    .line 235
    invoke-interface {p3}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    .line 237
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 238
    return-void
.end method

.method protected appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/dom4j/ProcessingInstruction;)V
    .locals 2

    .prologue
    .line 242
    invoke-interface {p3}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    .line 244
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 245
    return-void
.end method

.method protected attributeNameForNamespace(Lorg/dom4j/Namespace;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    const-string v0, "xmlns"

    .line 257
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_0
    return-object v0
.end method

.method protected createDomDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;
    .locals 5

    .prologue
    .line 268
    .line 271
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 273
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    new-instance v1, Lorg/dom4j/DocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate an instance of DOM Document with class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 282
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->createDomDocumentViaJAXP()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 284
    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->getDomDocumentClass()Ljava/lang/Class;

    move-result-object v1

    .line 288
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 289
    :catch_1
    move-exception v0

    .line 290
    new-instance v2, Lorg/dom4j/DocumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate an instance of DOM Document with class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected createDomDocument(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 327
    .line 331
    invoke-interface {p2, v0, v0, v0}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method protected createDomDocumentViaJAXP()Lorg/w3c/dom/Document;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 303
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/dom4j/io/JAXPHelper;->createDocument(ZZ)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    sget-boolean v1, Lorg/dom4j/io/DOMWriter;->loggedWarning:Z

    if-nez v1, :cond_0

    .line 306
    sput-boolean v2, Lorg/dom4j/io/DOMWriter;->loggedWarning:Z

    .line 308
    invoke-static {}, Lorg/dom4j/io/SAXHelper;->isVerboseErrorReporting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Warning: Caught exception attempting to use JAXP to create a W3C DOM document"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Exception was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 322
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 316
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Warning: Error occurred using JAXP to create a DOM document."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getDomDocumentClass()Ljava/lang/Class;
    .locals 6

    .prologue
    .line 54
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    .line 56
    if-nez v0, :cond_0

    .line 58
    sget-object v1, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    array-length v2, v1

    .line 60
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 62
    :try_start_0
    sget-object v3, Lorg/dom4j/io/DOMWriter;->DEFAULT_DOM_DOCUMENT_CLASSES:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 63
    const/4 v4, 0x1

    const-class v5, Lorg/dom4j/io/DOMWriter;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 76
    :cond_0
    return-object v0

    .line 69
    :catch_0
    move-exception v3

    .line 60
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z
    .locals 1

    .prologue
    .line 335
    if-eqz p1, :cond_0

    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v0, :cond_0

    .line 337
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resetNamespaceStack()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    .line 351
    iget-object v0, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 352
    return-void
.end method

.method public setDomDocumentClass(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;

    .line 88
    return-void
.end method

.method public setDomDocumentClassName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 100
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lorg/dom4j/io/DOMWriter;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DOMWriter;->domDocumentClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Lorg/dom4j/DocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load the DOM Document class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;
    .locals 2

    .prologue
    .line 110
    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lorg/w3c/dom/Document;

    .line 120
    :goto_0
    return-object p1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->resetNamespaceStack()V

    .line 116
    invoke-virtual {p0, p1}, Lorg/dom4j/io/DOMWriter;->createDomDocument(Lorg/dom4j/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 117
    invoke-interface {p1}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    .line 118
    iget-object v1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v1}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    move-object p1, v0

    .line 120
    goto :goto_0
.end method

.method public write(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;
    .locals 2

    .prologue
    .line 125
    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    .line 126
    check-cast p1, Lorg/w3c/dom/Document;

    .line 135
    :goto_0
    return-object p1

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/DOMWriter;->resetNamespaceStack()V

    .line 131
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/DOMWriter;->createDomDocument(Lorg/dom4j/Document;Lorg/w3c/dom/DOMImplementation;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 132
    invoke-interface {p1}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lorg/dom4j/io/DOMWriter;->appendDOMTree(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/util/List;)V

    .line 133
    iget-object v1, p0, Lorg/dom4j/io/DOMWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v1}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    move-object p1, v0

    .line 135
    goto :goto_0
.end method

.method protected writeNamespace(Lorg/w3c/dom/Element;Lorg/dom4j/Namespace;)V
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0, p2}, Lorg/dom4j/io/DOMWriter;->attributeNameForNamespace(Lorg/dom4j/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method
