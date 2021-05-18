.class public Lorg/dom4j/io/SAXModifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private modifiers:Ljava/util/HashMap;

.field private modifyReader:Lorg/dom4j/io/SAXModifyReader;

.field private pruneElements:Z

.field private xmlReader:Lorg/xml/sax/XMLReader;

.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    .line 82
    iput-object p1, p0, Lorg/dom4j/io/SAXModifier;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Z)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    .line 94
    iput-object p1, p0, Lorg/dom4j/io/SAXModifier;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 95
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    .line 72
    iput-boolean p1, p0, Lorg/dom4j/io/SAXModifier;->pruneElements:Z

    .line 73
    return-void
.end method

.method private getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifyReader:Lorg/dom4j/io/SAXModifyReader;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lorg/dom4j/io/SAXModifyReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXModifyReader;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifyReader:Lorg/dom4j/io/SAXModifyReader;

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifyReader:Lorg/dom4j/io/SAXModifyReader;

    return-object v0
.end method

.method private getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 364
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/dom4j/io/SAXHelper;->createXMLReader(Z)Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 367
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method private installModifyReader()Lorg/dom4j/io/SAXReader;
    .locals 5

    .prologue
    .line 335
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;

    move-result-object v2

    .line 337
    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifier;->isPruneElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifyReader:Lorg/dom4j/io/SAXModifyReader;

    new-instance v1, Lorg/dom4j/io/PruningDispatchHandler;

    invoke-direct {v1}, Lorg/dom4j/io/PruningDispatchHandler;-><init>()V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXModifyReader;->setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V

    .line 341
    :cond_0
    invoke-virtual {v2}, Lorg/dom4j/io/SAXModifyReader;->resetHandlers()V

    .line 343
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 345
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 348
    new-instance v4, Lorg/dom4j/io/SAXModifyElementHandler;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/io/ElementModifier;

    invoke-direct {v4, v1}, Lorg/dom4j/io/SAXModifyElementHandler;-><init>(Lorg/dom4j/io/ElementModifier;)V

    .line 350
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/dom4j/io/SAXModifyReader;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 353
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifier;->getXMLWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/SAXModifyReader;->setXMLWriter(Lorg/dom4j/io/XMLWriter;)V

    .line 354
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/SAXModifyReader;->setXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    .line 356
    return-object v2
.end method


# virtual methods
.method public addModifier(Ljava/lang/String;Lorg/dom4j/io/ElementModifier;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    return-object v0
.end method

.method public getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public isPruneElements()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lorg/dom4j/io/SAXModifier;->pruneElements:Z

    return v0
.end method

.method public modify(Ljava/io/File;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 109
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 112
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 147
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 150
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 168
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 171
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 187
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 190
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 208
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 211
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 246
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/lang/String;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 249
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Ljava/net/URL;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 227
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/net/URL;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 230
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public modify(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    .locals 3

    .prologue
    .line 128
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 131
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeModifier(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifyReader;->removeHandler(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public resetModifiers()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 271
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyReader;->resetHandlers()V

    .line 272
    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifyReader;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 303
    return-void
.end method

.method public setXMLWriter(Lorg/dom4j/io/XMLWriter;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lorg/dom4j/io/SAXModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    .line 321
    return-void
.end method
