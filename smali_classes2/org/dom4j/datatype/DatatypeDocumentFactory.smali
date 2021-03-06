.class public Lorg/dom4j/datatype/DatatypeDocumentFactory;
.super Lorg/dom4j/DocumentFactory;
.source "SourceFile"


# static fields
.field private static final DO_INTERN_QNAME:Z

.field private static final XSI_NAMESPACE:Lorg/dom4j/Namespace;

.field private static final XSI_NO_SCHEMA_LOCATION:Lorg/dom4j/QName;

.field private static final XSI_SCHEMA_LOCATION:Lorg/dom4j/QName;

.field protected static transient singleton:Lorg/dom4j/datatype/DatatypeDocumentFactory;


# instance fields
.field private autoLoadSchema:Z

.field private schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

.field private xmlSchemaReader:Lorg/dom4j/io/SAXReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/datatype/DatatypeDocumentFactory;-><init>()V

    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->singleton:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    .line 35
    const-string v0, "xsi"

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-static {v0, v1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NAMESPACE:Lorg/dom4j/Namespace;

    .line 38
    const-string v0, "schemaLocation"

    sget-object v1, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_SCHEMA_LOCATION:Lorg/dom4j/QName;

    .line 41
    const-string v0, "noNamespaceSchemaLocation"

    sget-object v1, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NO_SCHEMA_LOCATION:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    .line 52
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->xmlSchemaReader:Lorg/dom4j/io/SAXReader;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->autoLoadSchema:Z

    .line 60
    new-instance v0, Lorg/dom4j/datatype/SchemaParser;

    invoke-direct {v0, p0}, Lorg/dom4j/datatype/SchemaParser;-><init>(Lorg/dom4j/datatype/DatatypeDocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

    .line 61
    return-void
.end method

.method public static getInstance()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->singleton:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    return-object v0
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x20

    .line 114
    iget-boolean v1, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->autoLoadSchema:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NO_SCHEMA_LOCATION:Lorg/dom4j/QName;

    invoke-virtual {p2, v1}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 116
    :cond_0
    invoke-virtual {p0, v0, p3}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;Ljava/lang/String;)V

    .line 125
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0

    .line 117
    :cond_2
    iget-boolean v1, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->autoLoadSchema:Z

    if-eqz v1, :cond_1

    sget-object v1, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_SCHEMA_LOCATION:Lorg/dom4j/QName;

    invoke-virtual {p2, v1}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 119
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-interface {p1, v1}, Lorg/dom4j/Element;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    .line 121
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;Ljava/lang/String;Lorg/dom4j/Namespace;)V

    goto :goto_0
.end method

.method public getElementFactory(Lorg/dom4j/QName;)Lorg/dom4j/datatype/DatatypeElementFactory;
    .locals 3

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 103
    instance-of v2, v0, Lorg/dom4j/datatype/DatatypeElementFactory;

    if-eqz v2, :cond_0

    .line 104
    check-cast v0, Lorg/dom4j/datatype/DatatypeElementFactory;

    .line 107
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public loadSchema(Lorg/dom4j/Document;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

    invoke-virtual {v0, p1}, Lorg/dom4j/datatype/SchemaParser;->build(Lorg/dom4j/Document;)V

    .line 82
    return-void
.end method

.method protected loadSchema(Lorg/dom4j/Document;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 133
    :try_start_0
    invoke-interface {p1}, Lorg/dom4j/Document;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    .line 135
    if-nez v0, :cond_0

    .line 136
    const-string v0, "No EntityResolver available for resolving URI: "

    .line 137
    new-instance v1, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load schema: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    new-instance v0, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v1

    .line 143
    if-nez v0, :cond_1

    .line 144
    new-instance v0, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve the URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->xmlSchemaReader:Lorg/dom4j/io/SAXReader;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    .line 149
    invoke-virtual {p0, v0}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    return-void
.end method

.method protected loadSchema(Lorg/dom4j/Document;Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 4

    .prologue
    .line 162
    :try_start_0
    invoke-interface {p1}, Lorg/dom4j/Document;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    .line 164
    if-nez v0, :cond_0

    .line 165
    const-string v0, "No EntityResolver available for resolving URI: "

    .line 166
    new-instance v1, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load schema: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    new-instance v0, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v1

    .line 172
    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve the URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->xmlSchemaReader:Lorg/dom4j/io/SAXReader;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0, p3}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;Lorg/dom4j/Namespace;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    return-void
.end method

.method public loadSchema(Lorg/dom4j/Document;Lorg/dom4j/Namespace;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/datatype/SchemaParser;->build(Lorg/dom4j/Document;Lorg/dom4j/Namespace;)V

    .line 86
    return-void
.end method
