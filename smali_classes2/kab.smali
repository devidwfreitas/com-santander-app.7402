.class public Lkab;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfvi;

.field private c:Lkac;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lkab;->b:Lfvi;

    .line 31
    new-instance v0, Lkac;

    invoke-direct {v0, p0}, Lkac;-><init>(Lkab;)V

    iput-object v0, p0, Lkab;->c:Lkac;

    .line 35
    return-void
.end method

.method static synthetic a(Lkab;)Lfvi;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkab;->b:Lfvi;

    return-object v0
.end method


# virtual methods
.method public a()Lfvi;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lkab;->b:Lfvi;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lfvi;

    invoke-direct {v0}, Lfvi;-><init>()V

    iput-object v0, p0, Lkab;->b:Lfvi;

    .line 47
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 50
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lkab;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 51
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lkab;->c:Lkac;

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

    iput-object v0, p0, Lkab;->b:Lfvi;

    goto :goto_0
.end method
