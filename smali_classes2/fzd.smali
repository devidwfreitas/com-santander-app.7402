.class public Lfzd;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfyh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lfzi;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/Activity;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfyg;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lfyh;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfyl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfzi;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfzi;",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lfyg;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lgne;-><init>()V

    .line 26
    iput-object v0, p0, Lfzd;->a:Lfzi;

    .line 32
    iput-object v0, p0, Lfzd;->h:Lfyh;

    .line 37
    iput-object p1, p0, Lfzd;->a:Lfzi;

    .line 38
    iput-object p2, p0, Lfzd;->c:Landroid/app/Activity;

    .line 39
    iput-object p3, p0, Lfzd;->d:Ljava/util/List;

    .line 40
    iput-object p4, p0, Lfzd;->g:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfyh;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lfzd;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-static {}, Lhat;->q()Lfyz;

    move-result-object v1

    iget-object v2, p0, Lfzd;->d:Ljava/util/List;

    iget-object v3, p0, Lfzd;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfyz;->a(Ljava/util/List;Ljava/lang/String;)Lfyh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    const-string v2, "CadastroCanalPasso2Task"

    const-string v3, "Erro ao enviar cadastro."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzd;->a([Ljava/lang/Void;)Lfyh;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lfzd;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfzd;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lfyh;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    :try_start_0
    iget-object v0, p0, Lfzd;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfzd;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lfzd;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lfzd;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 81
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfzd;->c:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 85
    :goto_1
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "CadastroCanalPasso2Task"

    const-string v2, "Erro ao enviar cadastro."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lfzd;->a:Lfzi;

    invoke-interface {v0, p1}, Lfzi;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lfyh;

    invoke-virtual {p0, p1}, Lfzd;->a(Lfyh;)V

    return-void
.end method
