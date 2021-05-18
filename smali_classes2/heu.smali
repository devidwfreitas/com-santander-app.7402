.class public Lheu;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lhem;

.field private c:Lhev;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lheu;->b:Lhem;

    .line 29
    new-instance v0, Lhev;

    invoke-direct {v0, p0}, Lhev;-><init>(Lheu;)V

    iput-object v0, p0, Lheu;->c:Lhev;

    .line 33
    return-void
.end method

.method static synthetic a(Lheu;)Lhem;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lheu;->b:Lhem;

    return-object v0
.end method


# virtual methods
.method public a()Lhem;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lheu;->b:Lhem;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Lhem;

    invoke-direct {v0}, Lhem;-><init>()V

    iput-object v0, p0, Lheu;->b:Lhem;

    .line 41
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 44
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lheu;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 45
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lheu;->c:Lhev;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lheu;->b:Lhem;

    goto :goto_0
.end method
