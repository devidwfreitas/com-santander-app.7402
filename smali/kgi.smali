.class public Lkgi;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
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

    iput-object v0, p0, Lkgi;->agendamento:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lkgi;->excluirMantendoProximaRecarga:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lkgi;->periodoIndeterminado:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lkgi;->confirmarRecargar:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lkgi;->agendamento:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lkgi;->excluirMantendoProximaRecarga:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lkgi;->periodoIndeterminado:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lkgi;->confirmarRecargar:Ljava/lang/String;

    return-object v0
.end method
