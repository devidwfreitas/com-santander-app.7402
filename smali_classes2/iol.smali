.class public Liol;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lioh;

.field private c:Liom;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Liol;->b:Lioh;

    .line 32
    new-instance v0, Liom;

    invoke-direct {v0, p0}, Liom;-><init>(Liol;)V

    iput-object v0, p0, Liol;->c:Liom;

    .line 29
    return-void
.end method

.method static synthetic a(Liol;)Lioh;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Liol;->b:Lioh;

    return-object v0
.end method


# virtual methods
.method public a()Lioh;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Liol;->b:Lioh;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    new-instance v0, Lioh;

    invoke-direct {v0}, Lioh;-><init>()V

    iput-object v0, p0, Liol;->b:Lioh;

    .line 42
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 45
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Liol;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 46
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Liol;->c:Liom;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Liol;->b:Lioh;

    goto :goto_0
.end method
