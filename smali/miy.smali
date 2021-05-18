.class public Lmiy;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private codigoRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataContabil:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoSubProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private listPrazo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiz;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        required = false
    .end annotation
.end field

.field private mensagemRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private prazoMaximo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private rentabilidade100M:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private rentabilidade10M:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private rentabilidadeFuncionario:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorMinimo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmiy;->dataContabil:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lmiy;->dataContabil:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lmiy;->listPrazo:Ljava/util/List;

    .line 122
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmiy;->descricaoSubProduto:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lmiy;->descricaoSubProduto:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmiy;->prazoMaximo:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lmiy;->prazoMaximo:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmiy;->valorMinimo:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lmiy;->valorMinimo:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmiy;->codigoRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lmiy;->codigoRetorno:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmiy;->mensagemRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lmiy;->mensagemRetorno:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmiy;->rentabilidade100M:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lmiy;->rentabilidade100M:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmiy;->rentabilidade10M:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lmiy;->rentabilidade10M:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lmiy;->listPrazo:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmiy;->rentabilidadeFuncionario:Ljava/lang/String;

    return-object v0
.end method
