.class public Lfxl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 264
    iget-object v0, p0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->b(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)V

    .line 345
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v0, "CADASTRO_RECADASTRO_SENHA_APP"

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->c(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    new-instance v0, Lfzd;

    new-instance v1, Lfxm;

    invoke-direct {v1, p0}, Lfxm;-><init>(Lfxl;)V

    iget-object v2, p0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    .line 311
    invoke-static {v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a:Ljava/util/List;

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->t()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lfzd;-><init>(Lfzi;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfzd;->c([Ljava/lang/Object;)Lgne;

    goto :goto_0

    .line 314
    :cond_1
    new-instance v0, Lfzm;

    new-instance v1, Lfxn;

    invoke-direct {v1, p0}, Lfxn;-><init>(Lfxl;)V

    iget-object v2, p0, Lfxl;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    .line 342
    invoke-static {v2}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->d(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->a:Ljava/util/List;

    invoke-static {}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->t()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lfzm;-><init>(Lfzi;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfzm;->c([Ljava/lang/Object;)Lgne;

    goto :goto_0
.end method
