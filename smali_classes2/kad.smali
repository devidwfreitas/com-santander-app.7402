.class public Lkad;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfvk;

.field private c:Lkae;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lkad;->b:Lfvk;

    .line 31
    new-instance v0, Lkae;

    invoke-direct {v0, p0}, Lkae;-><init>(Lkad;)V

    iput-object v0, p0, Lkad;->c:Lkae;

    .line 35
    return-void
.end method

.method static synthetic a(Lkad;)Lfvk;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkad;->b:Lfvk;

    return-object v0
.end method


# virtual methods
.method public a()Lfvk;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lkad;->b:Lfvk;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lfvk;

    invoke-direct {v0}, Lfvk;-><init>()V

    iput-object v0, p0, Lkad;->b:Lfvk;

    .line 47
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 50
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lkad;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 51
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lkad;->c:Lkae;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lkad;->b:Lfvk;

    goto :goto_0
.end method
