.class public Lkia;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z

.field private agendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private confirmarRecargar:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private excluirMantendoProximaRecarga:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemAEA:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private periodoIndeterminado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lgnb;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lkia;->agendamento:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lkia;->excluirMantendoProximaRecarga:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lkia;->mensagemRetorno:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lkia;->periodoIndeterminado:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lkia;->confirmarRecargar:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lkia;->mensagemAEA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lkia;->a:Z

    .line 38
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lkia;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lkia;->agendamento:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lkia;->excluirMantendoProximaRecarga:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lkia;->mensagemRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lkia;->periodoIndeterminado:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lkia;->confirmarRecargar:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lkia;->mensagemAEA:Ljava/lang/String;

    return-object v0
.end method
