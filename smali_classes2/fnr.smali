.class Lfnr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Dialog;

.field final synthetic e:Lfnp;


# direct methods
.method constructor <init>(Lfnp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lfnr;->e:Lfnp;

    iput-object p2, p0, Lfnr;->a:Landroid/app/Activity;

    iput-object p3, p0, Lfnr;->b:Ljava/lang/String;

    iput-object p4, p0, Lfnr;->c:Ljava/lang/String;

    iput-object p5, p0, Lfnr;->d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfnr;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    const-string v1, "Nome"

    iget-object v2, p0, Lfnr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "cpf"

    iget-object v2, p0, Lfnr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "cadastro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lfnr;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 253
    iget-object v0, p0, Lfnr;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 254
    return-void
.end method
