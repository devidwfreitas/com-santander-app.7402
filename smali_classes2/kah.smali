.class public Lkah;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfwe;

.field private c:Lkai;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lkah;->b:Lfwe;

    .line 26
    new-instance v0, Lkai;

    invoke-direct {v0, p0}, Lkai;-><init>(Lkah;)V

    iput-object v0, p0, Lkah;->c:Lkai;

    .line 30
    return-void
.end method

.method static synthetic a(Lkah;)Lfwe;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lkah;->b:Lfwe;

    return-object v0
.end method


# virtual methods
.method public a()Lfwe;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lkah;->b:Lfwe;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    new-instance v0, Lfwe;

    invoke-direct {v0}, Lfwe;-><init>()V

    iput-object v0, p0, Lkah;->b:Lfwe;

    .line 41
    iget-object v0, p0, Lkah;->b:Lfwe;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lfwe;->a(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lkah;->b:Lfwe;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lfwe;->b(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lkah;->b:Lfwe;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lfwe;->c(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 49
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lkah;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 50
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lkah;->c:Lkai;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lkah;->b:Lfwe;

    goto :goto_0
.end method
