.class Llby;
.super Llbb;
.source "SourceFile"


# instance fields
.field final synthetic a:Llbq;


# direct methods
.method constructor <init>(Llbq;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Llby;->a:Llbq;

    invoke-direct {p0}, Llbb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llby;->a:Llbq;

    invoke-virtual {v1}, Llbq;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/seguros/ui/assistance/activities/RescheduleAssistanceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    const-string v1, "ASSISTANCE_TYPE_KEY"

    iget-object v2, p0, Llby;->a:Llbq;

    invoke-static {v2}, Llbq;->e(Llbq;)Lkph;

    move-result-object v2

    invoke-virtual {v2}, Lkph;->i()Lkpm;

    move-result-object v2

    invoke-virtual {v2}, Lkpm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v1, "ASSISTANCE_NUMBER_KEY"

    iget-object v2, p0, Llby;->a:Llbq;

    invoke-static {v2}, Llbq;->e(Llbq;)Lkph;

    move-result-object v2

    invoke-virtual {v2}, Lkph;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Llby;->a:Llbq;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Llbq;->startActivityForResult(Landroid/content/Intent;I)V

    .line 265
    return-void
.end method
