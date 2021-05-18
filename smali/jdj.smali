.class public Ljdj;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "request"
.end annotation


# instance fields
.field private agendamento:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private assinaturaTermo:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoFundo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private consultiva:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaFundo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataAgendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoAplicacao:Ljava/lang/String;
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
    .line 17
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ljdj;->dataAgendamento:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Ljdj;->dataAgendamento:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Ljdj;->agendamento:Z

    .line 57
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Ljdj;->codigoFundo:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Ljdj;->assinaturaTermo:Z

    .line 65
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Ljdj;->agendamento:Z

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Ljdj;->contaFundo:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Ljdj;->consultiva:Z

    .line 81
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Ljdj;->assinaturaTermo:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ljdj;->codigoFundo:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Ljdj;->tipoAplicacao:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Ljdj;->valorAplicacao:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Ljdj;->consultiva:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ljdj;->contaFundo:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Ljdj;->tipoAplicacao:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ljdj;->valorAplicacao:Ljava/lang/String;

    return-object v0
.end method
