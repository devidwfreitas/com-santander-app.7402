.class public Lsw;
.super Labv;
.source "SourceFile"

# interfaces
.implements Labx;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "netValue"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "grossValue"
    .end annotation
.end field

.field private c:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "lockedValue"
    .end annotation
.end field

.field private d:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "judiciarylockedValue"
    .end annotation
.end field

.field private e:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "incomeTaxValue"
    .end annotation
.end field

.field private f:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "financialTransactionTaxValue"
    .end annotation
.end field

.field private g:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "newSavingRuleValue"
    .end annotation
.end field

.field private h:Ljava/lang/Double;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "oldSavingRuleValue"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "referenceDate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Labv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lsw;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Double;)V
    .locals 1

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsw;->a:Ljava/lang/String;

    .line 51
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lsw;->i:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lsw;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Double;)V
    .locals 1

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsw;->b:Ljava/lang/String;

    .line 66
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lsw;->c:Ljava/lang/Double;

    return-object v0
.end method

.method public c(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lsw;->c:Ljava/lang/Double;

    .line 74
    return-void
.end method

.method public d()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lsw;->d:Ljava/lang/Double;

    return-object v0
.end method

.method public d(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lsw;->d:Ljava/lang/Double;

    .line 82
    return-void
.end method

.method public e()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lsw;->e:Ljava/lang/Double;

    return-object v0
.end method

.method public e(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lsw;->e:Ljava/lang/Double;

    .line 90
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public f(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lsw;->g:Ljava/lang/Double;

    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lsw;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsw;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsw;->a:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lsw;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsw;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsw;->b:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public g(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lsw;->h:Ljava/lang/Double;

    return-void
.end method

.method public h()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lsw;->f:Ljava/lang/Double;

    return-object v0
.end method

.method public h(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lsw;->f:Ljava/lang/Double;

    .line 106
    return-void
.end method

.method public i()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lsw;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public j()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lsw;->h:Ljava/lang/Double;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lsw;->i:Ljava/lang/String;

    return-object v0
.end method
