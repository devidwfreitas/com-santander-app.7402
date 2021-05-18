.class public Lfrf;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private dataSolicitada:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private horaSolicitada:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private indiceAgendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numProtocoloAgendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lfrf;->indiceAgendamento:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lfrf;->indiceAgendamento:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lfrf;->dataSolicitada:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lfrf;->dataSolicitada:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lfrf;->horaSolicitada:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lfrf;->horaSolicitada:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lfrf;->numProtocoloAgendamento:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lfrf;->numProtocoloAgendamento:Ljava/lang/String;

    .line 64
    return-void
.end method
