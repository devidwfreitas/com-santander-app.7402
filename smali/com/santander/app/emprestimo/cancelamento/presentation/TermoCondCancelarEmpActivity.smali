.class public Lcom/santander/app/emprestimo/cancelamento/presentation/TermoCondCancelarEmpActivity;
.super Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Lhgb;)V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/cancelamento/presentation/TermoCondCancelarEmpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    const-string v1, "android.intent.extra.TITLE"

    invoke-interface {p1}, Lhgb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v1, "android.intent.extra.TEXT"

    invoke-interface {p1}, Lhgb;->j()Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 26
    const-string v1, ""

    invoke-interface {p1}, Lhgb;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/santander/app/emprestimo/acordo/presentation/TermoCondicaoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/TermoCondCancelarEmpActivity;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 34
    return-void
.end method
