.class public Ljyt;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lftg;

.field private c:Lfti;

.field private d:Lfth;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Ljyu;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 28
    iput-object v0, p0, Ljyt;->b:Lftg;

    .line 29
    iput-object v0, p0, Ljyt;->c:Lfti;

    .line 30
    iput-object v0, p0, Ljyt;->d:Lfth;

    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljyt;->e:Ljava/lang/Boolean;

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljyt;->f:Ljava/lang/Boolean;

    .line 33
    new-instance v0, Ljyu;

    invoke-direct {v0, p0}, Ljyu;-><init>(Ljyt;)V

    iput-object v0, p0, Ljyt;->g:Ljyu;

    .line 37
    return-void
.end method

.method static synthetic a(Ljyt;Lfth;)Lfth;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljyt;->d:Lfth;

    return-object p1
.end method

.method static synthetic a(Ljyt;)Lfti;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyt;->c:Lfti;

    return-object v0
.end method

.method static synthetic a(Ljyt;Lfti;)Lfti;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljyt;->c:Lfti;

    return-object p1
.end method

.method static synthetic a(Ljyt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljyt;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Ljyt;)Lftg;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyt;->b:Lftg;

    return-object v0
.end method

.method static synthetic b(Ljyt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljyt;->f:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic c(Ljyt;)Lfth;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyt;->d:Lfth;

    return-object v0
.end method

.method static synthetic d(Ljyt;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyt;->f:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a()Lftg;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ljyt;->b:Lftg;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 47
    :try_start_0
    new-instance v0, Lftg;

    invoke-direct {v0}, Lftg;-><init>()V

    iput-object v0, p0, Ljyt;->b:Lftg;

    .line 48
    iget-object v0, p0, Ljyt;->b:Lftg;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lftg;->a(Ljava/util/Vector;)V

    .line 50
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 53
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljyt;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 54
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Ljyt;->g:Ljyu;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Ljyt;->b:Lftg;

    goto :goto_0
.end method
