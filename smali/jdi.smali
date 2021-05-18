.class public Ljdi;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cnpjFundo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoFundo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaFundo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private data:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataDebitoCredito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoTermo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorAplicacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ljdi;->dataDebitoCredito:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Ljdi;->dataDebitoCredito:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljdi;->cnpjFundo:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Ljdi;->cnpjFundo:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ljdi;->codigoFundo:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Ljdi;->codigoFundo:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ljdi;->contaFundo:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Ljdi;->contaFundo:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljdi;->data:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Ljdi;->data:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljdi;->tipoTermo:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Ljdi;->tipoTermo:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ljdi;->valorAplicacao:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Ljdi;->valorAplicacao:Ljava/lang/String;

    .line 93
    return-void
.end method
