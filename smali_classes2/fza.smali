.class public Lfza;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfyf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lfzi;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lfzi;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lgne;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lfza;->a:Lfzi;

    .line 32
    iput-object p1, p0, Lfza;->a:Lfzi;

    .line 33
    iput-object p2, p0, Lfza;->c:Landroid/app/Activity;

    .line 34
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfyf;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lfza;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-static {}, Lhat;->q()Lfyz;

    move-result-object v1

    invoke-virtual {v1}, Lfyz;->a()Lfyf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfza;->a([Ljava/lang/Void;)Lfyf;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Lfza;->c:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfza;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lfyf;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 62
    :try_start_0
    iget-object v0, p0, Lfza;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfza;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lfza;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lfza;->b:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 71
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lfza;->c:Landroid/app/Activity;

    new-instance v2, Lfvu;

    invoke-direct {v2}, Lfvu;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 76
    :goto_1
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lfyf;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lfzc;

    invoke-direct {v1, p0, v2}, Lfzc;-><init>(Lfza;Lfzb;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    iget-object v0, p0, Lfza;->a:Lfzi;

    invoke-interface {v0, p1}, Lfzi;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lfyf;

    invoke-virtual {p0, p1}, Lfza;->a(Lfyf;)V

    return-void
.end method
