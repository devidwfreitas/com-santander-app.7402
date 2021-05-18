.class Lfmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lfmj;


# direct methods
.method constructor <init>(Lfmj;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lfmk;->a:Lfmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lfmk;->a:Lfmj;

    iget-object v0, v0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->f(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)V

    .line 230
    new-instance v0, Liid;

    invoke-direct {v0}, Liid;-><init>()V

    .line 231
    iget-object v1, p0, Lfmk;->a:Lfmj;

    iget-object v1, v1, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Liid;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)V

    .line 232
    iget-object v1, p0, Lfmk;->a:Lfmj;

    iget-object v1, v1, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    iget-object v2, p0, Lfmk;->a:Lfmj;

    iget-object v2, v2, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-virtual {v2}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/FragmentManager;

    .line 233
    iget-object v1, p0, Lfmk;->a:Lfmj;

    iget-object v1, v1, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    iget-object v2, p0, Lfmk;->a:Lfmj;

    iget-object v2, v2, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->g(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->a(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 234
    iget-object v1, p0, Lfmk;->a:Lfmj;

    iget-object v1, v1, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->h(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f100544

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 235
    iget-object v0, p0, Lfmk;->a:Lfmj;

    iget-object v0, v0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->h(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 236
    iget-object v0, p0, Lfmk;->a:Lfmj;

    iget-object v0, v0, Lfmj;->a:Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;->h(Lcom/santander/app/RendaFixaAplicacaoConfirmacaoActivity;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 237
    return-void
.end method
