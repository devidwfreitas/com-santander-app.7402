.class public Lkbu;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private agencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codNSU:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoSubproduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private conta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoIndicadorExtratoATM:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private indicadorExtratoATM:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lkbu;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lkbu;->agencia:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkbu;->conta:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lkbu;->conta:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lkbu;->descricaoIndicadorExtratoATM:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lkbu;->descricaoIndicadorExtratoATM:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lkbu;->codNSU:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lkbu;->codNSU:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lkbu;->codigoSubproduto:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lkbu;->codigoSubproduto:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lkbu;->codigoProduto:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lkbu;->codigoProduto:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lkbu;->indicadorExtratoATM:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lkbu;->indicadorExtratoATM:Ljava/lang/String;

    .line 95
    return-void
.end method
