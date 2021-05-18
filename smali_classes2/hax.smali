.class Lhax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lhav;


# direct methods
.method constructor <init>(Lhav;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lhax;->b:Lhav;

    iput-object p2, p0, Lhax;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhax;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    const-string v1, "Nome"

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v1, "cpf"

    invoke-static {}, Lmzr;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "cadastro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Lhax;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 334
    return-void
.end method
