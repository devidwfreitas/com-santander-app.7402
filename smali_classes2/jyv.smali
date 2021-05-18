.class public Ljyv;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfwa;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lfwf;

.field private f:Lfwg;

.field private g:Ljava/lang/Boolean;

.field private h:Ljyw;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 28
    iput-object v0, p0, Ljyv;->b:Lfwa;

    .line 29
    iput-object v0, p0, Ljyv;->c:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Ljyv;->d:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Ljyv;->e:Lfwf;

    .line 32
    iput-object v0, p0, Ljyv;->f:Lfwg;

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljyv;->g:Ljava/lang/Boolean;

    .line 34
    new-instance v0, Ljyw;

    invoke-direct {v0, p0}, Ljyw;-><init>(Ljyv;)V

    iput-object v0, p0, Ljyv;->h:Ljyw;

    .line 38
    return-void
.end method

.method static synthetic a(Ljyv;Lfwf;)Lfwf;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljyv;->e:Lfwf;

    return-object p1
.end method

.method static synthetic a(Ljyv;)Lfwg;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyv;->f:Lfwg;

    return-object v0
.end method

.method static synthetic a(Ljyv;Lfwg;)Lfwg;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljyv;->f:Lfwg;

    return-object p1
.end method

.method static synthetic a(Ljyv;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljyv;->g:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Ljyv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljyv;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Ljyv;)Lfwa;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyv;->b:Lfwa;

    return-object v0
.end method

.method static synthetic b(Ljyv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ljyv;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Ljyv;)Lfwf;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyv;->e:Lfwf;

    return-object v0
.end method

.method static synthetic d(Ljyv;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyv;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic e(Ljyv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyv;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Ljyv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljyv;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lfwa;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ljyv;->b:Lfwa;

    return-object v0
.end method

.method public a(Lfwf;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Ljyv;->e:Lfwf;

    .line 86
    return-void
.end method

.method public a(Lfwg;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Ljyv;->f:Lfwg;

    .line 94
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    new-instance v0, Lfwa;

    invoke-direct {v0}, Lfwa;-><init>()V

    iput-object v0, p0, Ljyv;->b:Lfwa;

    .line 49
    iget-object v0, p0, Ljyv;->b:Lfwa;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lfwa;->a(Ljava/util/Vector;)V

    .line 50
    iget-object v0, p0, Ljyv;->b:Lfwa;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lfwa;->b(Ljava/util/Vector;)V

    .line 52
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 55
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljyv;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 56
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Ljyv;->h:Ljyw;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ljyv;->b:Lfwa;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Ljyv;->c:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ljyv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Ljyv;->d:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ljyv;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lfwf;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ljyv;->e:Lfwf;

    return-object v0
.end method

.method public f()Lfwg;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ljyv;->f:Lfwg;

    return-object v0
.end method
