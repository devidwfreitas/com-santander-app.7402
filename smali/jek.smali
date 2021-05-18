.class public Ljek;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "AceiteRequest"
.end annotation


# instance fields
.field private codigoBanco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoEventoApi:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoPlataforma:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoSubProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroConta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoDocTexto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ljek;->codigoBanco:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Ljek;->codigoBanco:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ljek;->codigoEventoApi:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Ljek;->codigoEventoApi:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ljek;->codigoPlataforma:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Ljek;->codigoPlataforma:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljek;->codigoSubProduto:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Ljek;->codigoSubProduto:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ljek;->numeroConta:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Ljek;->numeroConta:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ljek;->tipoDocTexto:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Ljek;->tipoDocTexto:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljek;->codigoProduto:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Ljek;->codigoProduto:Ljava/lang/String;

    .line 93
    return-void
.end method
