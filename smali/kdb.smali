.class public Lkdb;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "beneficiario"
.end annotation


# instance fields
.field private dataNascimentoBeneficiario:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nome:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private parentesco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private percentualRateio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private sexo:Ljava/lang/String;
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
    .line 32
    iget-object v0, p0, Lkdb;->dataNascimentoBeneficiario:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lkdb;->dataNascimentoBeneficiario:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lkdb;->nome:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lkdb;->nome:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lkdb;->parentesco:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lkdb;->parentesco:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lkdb;->percentualRateio:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lkdb;->percentualRateio:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lkdb;->sexo:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lkdb;->sexo:Ljava/lang/String;

    .line 69
    return-void
.end method
