.class Lhpc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lhxm;

.field private b:Lhxq;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 110
    :try_start_0
    iget-object v1, p0, Lhpc;->b:Lhxq;

    invoke-interface {v1}, Lhxq;->isMorno()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lhpc;->b:Lhxq;

    .line 111
    invoke-interface {v1}, Lhxq;->getParcelaMax()I

    move-result v1

    if-gt p1, v1, :cond_1

    iget-object v1, p0, Lhpc;->b:Lhxq;

    .line 112
    invoke-interface {v1}, Lhxq;->getParcelaMin()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 114
    :cond_1
    :goto_0
    return v0

    .line 113
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(F)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 91
    :try_start_0
    iget-object v1, p0, Lhpc;->b:Lhxq;

    invoke-interface {v1}, Lhxq;->isMorno()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lhpc;->b:Lhxq;

    .line 92
    invoke-interface {v1}, Lhxq;->getValorLimiteMax()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lhpc;->b:Lhxq;

    .line 93
    invoke-interface {v1}, Lhxq;->getValorLimiteMin()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 95
    :cond_1
    :goto_0
    return v0

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 120
    :try_start_0
    iget-object v1, p0, Lhpc;->a:Lhxm;

    invoke-interface {v1}, Lhxm;->getParcelaMax()I

    move-result v1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lhpc;->a:Lhxm;

    .line 121
    invoke-interface {v1}, Lhxm;->getParcelaMin()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 122
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(F)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    :try_start_0
    iget-object v1, p0, Lhpc;->a:Lhxm;

    invoke-interface {v1}, Lhxm;->getValorLimiteMax()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lhpc;->a:Lhxm;

    .line 102
    invoke-interface {v1}, Lhxm;->getValorLimiteMin()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 103
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method a(F)I
    .locals 3
    .annotation build Lhxu;
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x3

    .line 35
    invoke-direct {p0, p1}, Lhpc;->b(F)Z

    move-result v1

    .line 36
    invoke-direct {p0, p1}, Lhpc;->c(F)Z

    move-result v2

    .line 38
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 39
    const/16 v0, 0x63

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 43
    const/16 v0, 0xb

    goto :goto_0

    .line 44
    :cond_2
    if-nez v1, :cond_0

    .line 45
    const/16 v0, 0xa

    goto :goto_0
.end method

.method a(FI)I
    .locals 8
    .annotation build Lhxu;
    .end annotation

    .prologue
    const/16 v1, 0xb

    const/16 v2, 0xa

    const/16 v0, 0x63

    .line 54
    if-nez p2, :cond_1

    .line 55
    invoke-virtual {p0, p1}, Lhpc;->a(F)I

    move-result v0

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    const/4 v3, 0x3

    .line 60
    invoke-direct {p0, p1}, Lhpc;->b(F)Z

    move-result v4

    .line 61
    invoke-direct {p0, p1}, Lhpc;->c(F)Z

    move-result v5

    .line 62
    invoke-direct {p0, p2}, Lhpc;->a(I)Z

    move-result v6

    .line 63
    invoke-direct {p0, p2}, Lhpc;->b(I)Z

    move-result v7

    .line 65
    if-nez v4, :cond_2

    if-eqz v5, :cond_0

    :cond_2
    if-nez v6, :cond_3

    if-eqz v7, :cond_0

    .line 70
    :cond_3
    if-eqz v4, :cond_4

    if-nez v5, :cond_4

    .line 72
    if-eqz v6, :cond_0

    move v0, v1

    goto :goto_0

    .line 75
    :cond_4
    if-nez v4, :cond_5

    .line 77
    if-eqz v7, :cond_0

    move v0, v2

    goto :goto_0

    .line 80
    :cond_5
    if-eqz v6, :cond_6

    if-nez v7, :cond_6

    move v0, v1

    .line 81
    goto :goto_0

    .line 82
    :cond_6
    if-nez v6, :cond_7

    move v0, v2

    .line 83
    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_0
.end method

.method a(Lhxm;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lhpc;->a:Lhxm;

    .line 25
    return-void
.end method

.method a(Lhxq;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lhpc;->b:Lhxq;

    .line 29
    return-void
.end method
