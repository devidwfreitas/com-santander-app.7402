.class public Lmjf;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private codigoRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoSubProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private listaRemuneracao:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmjd;",
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

.field private percentual:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private prazo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaCDI:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoInteresse:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorAplicado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmjf;->dataVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lmjf;->dataVencimento:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmjd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lmjf;->listaRemuneracao:Ljava/util/List;

    .line 113
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmjf;->descricaoSubProduto:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lmjf;->descricaoSubProduto:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lmjf;->percentual:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lmjf;->percentual:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmjf;->prazo:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lmjf;->prazo:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmjf;->taxaCDI:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lmjf;->taxaCDI:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmjf;->tipoInteresse:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lmjf;->tipoInteresse:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmjf;->valorAplicado:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lmjf;->valorAplicado:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmjd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lmjf;->listaRemuneracao:Ljava/util/List;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lmjf;->codigoRetorno:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmjf;->codigoRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lmjf;->mensagemRetorno:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmjf;->mensagemRetorno:Ljava/lang/String;

    return-object v0
.end method
