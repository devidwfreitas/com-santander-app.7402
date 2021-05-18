.class public Lnbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnbo;


# static fields
.field private static final e:Ljava/lang/String; = "ERROR_GEN_OTP"


# instance fields
.field private a:Lndw;

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Lmip;

.field private d:Lnbb;


# direct methods
.method public constructor <init>(Lndw;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lnbp;->a:Lndw;

    .line 40
    iput-object p2, p0, Lnbp;->b:Landroid/support/v4/app/Fragment;

    .line 41
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lnbp;->c:Lmip;

    .line 42
    new-instance v0, Lnbb;

    invoke-direct {v0}, Lnbb;-><init>()V

    iput-object v0, p0, Lnbp;->d:Lnbb;

    .line 43
    return-void
.end method

.method static synthetic a(Lnbp;)Lmip;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnbp;->c:Lmip;

    return-object v0
.end method

.method static synthetic b(Lnbp;)Lnbb;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnbp;->d:Lnbb;

    return-object v0
.end method

.method static synthetic c(Lnbp;)Lndw;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnbp;->a:Lndw;

    return-object v0
.end method

.method static synthetic d(Lnbp;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnbp;->b:Landroid/support/v4/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lnbp;->c:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    invoke-virtual {v0}, Live;->a()Ljava/lang/String;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Lneh;

    new-instance v2, Lnbq;

    invoke-direct {v2, p0, v0}, Lnbq;-><init>(Lnbp;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lneh;-><init>(Lgkw;)V

    .line 106
    invoke-virtual {v1}, Lneh;->a()V

    .line 108
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lnbp;->c:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    invoke-virtual {v0}, Live;->a()Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v0, ""

    .line 114
    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    invoke-static {v1}, Lalb;->a(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ErrD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    iget-object v1, p0, Lnbp;->c:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->c()Live;

    move-result-object v1

    invoke-virtual {v1, v0}, Live;->b(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lnbp;->a:Lndw;

    invoke-interface {v0}, Lndw;->h()V

    .line 133
    iget-object v0, p0, Lnbp;->a:Lndw;

    invoke-interface {v0}, Lndw;->f()V

    .line 135
    :cond_0
    return-void

    .line 125
    :cond_1
    :try_start_1
    const-string v2, "ErroGenerateOTPHub"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    const-string v2, "ERROR_GEN_OTP"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
