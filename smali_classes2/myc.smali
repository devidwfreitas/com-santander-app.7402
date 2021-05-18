.class final Lmyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lmyc;->a:Landroid/app/Activity;

    iput-object p2, p0, Lmyc;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 291
    :try_start_0
    new-instance v0, Lmyd;

    invoke-direct {v0, p0}, Lmyd;-><init>(Lmyc;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 327
    invoke-virtual {v0, v1}, Lmyd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    const-string v1, "DialogUtil"

    const-string v2, "Erro ao tentar invalidar sess\u00e3o."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
