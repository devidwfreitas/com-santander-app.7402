.class final Lahl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lahf;


# direct methods
.method constructor <init>(Lahf;)V
    .locals 0

    iput-object p1, p0, Lahl;->a:Lahf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lahl;->a:Lahf;

    invoke-static {v0}, Lahf;->a(Lahf;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagl;->tag_mes_informativo_acao:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lahl;->a:Lahf;

    invoke-static {v1}, Lahf;->a(Lahf;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lagl;->tag_valor_dividas_por_categoria:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laiy;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lahl;->a:Lahf;

    invoke-static {v0}, Lahf;->a(Lahf;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lahl;->a:Lahf;

    invoke-static {v2}, Lahf;->a(Lahf;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lbr/com/santander/modulo/emprestimoslib/features/gestao/duvidas/view/DuvidasActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
