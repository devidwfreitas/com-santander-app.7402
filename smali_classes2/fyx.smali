.class public Lfyx;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfyo;

.field private c:Lfyy;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lfyx;->b:Lfyo;

    .line 26
    new-instance v0, Lfyy;

    invoke-direct {v0, p0}, Lfyy;-><init>(Lfyx;)V

    iput-object v0, p0, Lfyx;->c:Lfyy;

    .line 29
    return-void
.end method

.method static synthetic a(Lfyx;)Lfyo;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lfyx;->b:Lfyo;

    return-object v0
.end method

.method static synthetic a(Lfyx;Lfyo;)Lfyo;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lfyx;->b:Lfyo;

    return-object p1
.end method


# virtual methods
.method public a()Lfyo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lfyx;->b:Lfyo;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 41
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lfyx;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 42
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lfyx;->c:Lfyy;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lfyx;->b:Lfyo;

    goto :goto_0
.end method
