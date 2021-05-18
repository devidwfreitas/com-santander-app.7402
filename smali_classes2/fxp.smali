.class Lfxp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfye;


# instance fields
.field final synthetic a:Lfyf;

.field final synthetic b:Lfxo;


# direct methods
.method constructor <init>(Lfxo;Lfyf;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lfxp;->b:Lfxo;

    iput-object p2, p0, Lfxp;->a:Lfyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 381
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lfxp;->b:Lfxo;

    iget-object v0, v0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->g(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Lfxv;

    move-result-object v0

    invoke-virtual {v0}, Lfxv;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 383
    iget-object v0, p0, Lfxp;->b:Lfxo;

    iget-object v0, v0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->g(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Lfxv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfxv;->a(I)Lfyk;

    move-result-object v2

    .line 384
    iget-object v0, p0, Lfxp;->a:Lfyf;

    invoke-virtual {v0}, Lfyf;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfyk;

    .line 386
    invoke-virtual {v2}, Lfyk;->b()Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-virtual {v0}, Lfyk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v2}, Lfyk;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lfxp;->b:Lfxo;

    iget-object v0, v0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->g(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Lfxv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfxv;->a(Lfyk;)V

    .line 381
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lfxp;->b:Lfxo;

    iget-object v0, v0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->h(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)V

    .line 394
    iget-object v0, p0, Lfxp;->b:Lfxo;

    iget-object v0, v0, Lfxo;->a:Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->g(Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)Lfxv;

    move-result-object v0

    invoke-virtual {v0}, Lfxv;->notifyDataSetChanged()V

    .line 395
    return-void
.end method
