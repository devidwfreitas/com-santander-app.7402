.class public Lgic;
.super Lgoe;
.source "SourceFile"


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

.field private contratoCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private entidade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroCartao:Ljava/lang/String;
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
    .line 30
    iget-object v0, p0, Lgic;->contratoCartao:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lgic;->contratoCartao:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lgic;->agendamento:Z

    .line 51
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgic;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lgic;->numeroCartao:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lgic;->entidade:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lgic;->agendamento:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lgic;->entidade:Ljava/lang/String;

    return-object v0
.end method
