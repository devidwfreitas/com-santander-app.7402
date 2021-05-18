.class public Ltq;
.super Labv;
.source "SourceFile"


# instance fields
.field private a:Lsx;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "customer"
    .end annotation
.end field

.field private b:Ljava/lang/Boolean;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "isPDIModuleActiveIndicator"
    .end annotation
.end field

.field private c:Lsz;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "feriados"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Labv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lsz;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ltq;->c:Lsz;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Ltq;->b:Ljava/lang/Boolean;

    .line 45
    return-void
.end method

.method public a(Lsx;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Ltq;->a:Lsx;

    .line 37
    return-void
.end method

.method public a(Lsz;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Ltq;->c:Lsz;

    .line 29
    return-void
.end method

.method public b()Lsx;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ltq;->a:Lsx;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ltq;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfoModel{customer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltq;->a:Lsx;

    .line 50
    invoke-virtual {v1}, Lsx;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPDIModuleActiveIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltq;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    return-object v0
.end method
