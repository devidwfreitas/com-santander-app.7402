.class final Lafj;
.super Ljava/lang/Object;

# interfaces
.implements Laev;


# instance fields
.field private synthetic a:Landroid/app/Dialog;

.field private synthetic b:Lafe;


# direct methods
.method constructor <init>(Lafe;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lafj;->b:Lafe;

    iput-object p2, p0, Lafj;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lafj;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const-string v1, "Pagamentos_DDA_Cadastrar_Resultado"

    const-string v2, "Falha"

    invoke-virtual {v0, v1, v2}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    iget-object v1, p0, Lafj;->b:Lafe;

    invoke-static {v1}, Lafe;->a(Lafe;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lafj;->b:Lafe;

    invoke-static {v2}, Lafe;->a(Lafe;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Ladw;->subtitulo_validacao_id_santander_comprovante:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ladh;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lafj;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const-string v1, "Pagamentos_DDA_Cadastrar_Resultado"

    const-string v2, "Sucesso"

    invoke-virtual {v0, v1, v2}, Ladh;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafj;->b:Lafe;

    invoke-static {v1}, Lafe;->a(Lafe;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lbr/com/santander/modulo/ddav1/view/DDASuccessActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lafj;->b:Lafe;

    invoke-static {v1}, Lafe;->a(Lafe;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lafj;->b:Lafe;

    invoke-static {v0}, Lafe;->a(Lafe;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
