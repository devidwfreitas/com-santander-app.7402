.class public Lfve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/santander/app/contacorrente/domain/LancamentoContract;
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lfve;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDocto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lfve;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHistorico()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lfve;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSaldo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lfve;->f:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lfve;->f:Ljava/lang/Double;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getValor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lfve;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lfve;->e:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setDocto(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lfve;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setHistorico(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lfve;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setSaldo(D)V
    .locals 1

    .prologue
    .line 78
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lfve;->f:Ljava/lang/Double;

    .line 79
    return-void
.end method

.method public setValor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lfve;->d:Ljava/lang/String;

    .line 59
    return-void
.end method
