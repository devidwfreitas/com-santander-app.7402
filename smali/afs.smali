.class final Lafs;
.super Ljava/lang/Object;

# interfaces
.implements Laeh;


# instance fields
.field private synthetic a:Landroid/app/Dialog;

.field private synthetic b:Lafh;


# direct methods
.method constructor <init>(Lafh;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lafs;->b:Lafh;

    iput-object p2, p0, Lafs;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laeb;)V
    .locals 3

    iget-object v0, p0, Lafs;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafs;->b:Lafh;

    invoke-static {v1}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lbr/com/santander/modulo/ddav1/view/TitleDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lafs;->b:Lafh;

    invoke-static {v1}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lis;)V
    .locals 4

    iget-object v0, p0, Lafs;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    iget-object v1, p0, Lafs;->b:Lafh;

    invoke-static {v1}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lafs;->b:Lafh;

    invoke-static {v2}, Lafh;->a(Lafh;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Ladw;->erro_retorno_service:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ladh;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
