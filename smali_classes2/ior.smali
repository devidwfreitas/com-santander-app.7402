.class public Lior;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Liok;

.field private c:Lios;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 26
    new-instance v0, Liok;

    invoke-direct {v0}, Liok;-><init>()V

    iput-object v0, p0, Lior;->b:Liok;

    .line 28
    new-instance v0, Lios;

    invoke-direct {v0, p0}, Lios;-><init>(Lior;)V

    iput-object v0, p0, Lior;->c:Lios;

    .line 32
    return-void
.end method

.method static synthetic a(Lior;)Liok;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lior;->b:Liok;

    return-object v0
.end method


# virtual methods
.method public a()Liok;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lior;->b:Liok;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 41
    :try_start_0
    new-instance v0, Liok;

    invoke-direct {v0}, Liok;-><init>()V

    iput-object v0, p0, Lior;->b:Liok;

    .line 43
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 46
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lior;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 47
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lior;->c:Lios;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lior;->b:Liok;

    goto :goto_0
.end method
