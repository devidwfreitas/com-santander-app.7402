.class Llzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llzi;


# direct methods
.method constructor <init>(Llzi;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Llzl;->a:Llzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 314
    const-string v0, "Seguros_Sinistro_Acionar_Cobertura_Acao"

    const-string v1, "Assistencia24h"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Llzl;->a:Llzi;

    invoke-static {v0}, Llzi;->a(Llzi;)Lkvb;

    move-result-object v0

    invoke-virtual {v0}, Lkvb;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llzl;->a:Llzi;

    invoke-static {v0}, Llzi;->a(Llzi;)Lkvb;

    move-result-object v0

    invoke-virtual {v0}, Lkvb;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Llzl;->a:Llzi;

    invoke-virtual {v0}, Llzi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llzl;->a:Llzi;

    .line 320
    invoke-virtual {v1}, Llzi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09070b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Llzl;->a:Llzi;

    .line 321
    invoke-static {v2}, Llzi;->a(Llzi;)Lkvb;

    move-result-object v2

    invoke-virtual {v2}, Lkvb;->a()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v0, v1, v2}, Lmie;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmie;

    move-result-object v0

    .line 322
    iget-object v1, p0, Llzl;->a:Llzi;

    invoke-virtual {v1}, Llzi;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-select-kinship-tag"

    invoke-virtual {v0, v1, v2}, Lmie;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 324
    :cond_0
    return-void
.end method
