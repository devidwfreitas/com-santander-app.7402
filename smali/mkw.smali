.class public Lmkw;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "entrada"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private agenciaCredito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private agenciaOrigem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private b:Z

.field private bancoCredito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private contaCredito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaOrigem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cpfCnpj1:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;

.field private indicadorContaConjunta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeTit1:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoConta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmkw;->agenciaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lmkw;->agenciaOrigem:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lmkw;->b:Z

    .line 140
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmkw;->contaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lmkw;->contaOrigem:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 155
    iput-boolean p1, p0, Lmkw;->d:Z

    .line 156
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmkw;->bancoCredito:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lmkw;->bancoCredito:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmkw;->agenciaCredito:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lmkw;->agenciaCredito:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmkw;->contaCredito:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lmkw;->contaCredito:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmkw;->cpfCnpj1:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lmkw;->cpfCnpj1:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmkw;->tipoConta:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lmkw;->tipoConta:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmkw;->nomeTit1:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lmkw;->nomeTit1:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lmkw;->indicadorContaConjunta:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lmkw;->indicadorContaConjunta:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lmkw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lmkw;->a:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lmkw;->c:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lmkw;->b:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmkw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lmkw;->e:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lmkw;->d:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmkw;->e:Ljava/lang/String;

    return-object v0
.end method
