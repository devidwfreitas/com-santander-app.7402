.class Llbk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llbi;


# direct methods
.method constructor <init>(Llbi;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Llbk;->a:Llbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Llbk;->a:Llbi;

    invoke-virtual {v0}, Llbi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llbk;->a:Llbi;

    .line 88
    invoke-virtual {v1}, Llbi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09070b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Llbk;->a:Llbi;

    .line 89
    invoke-virtual {v2}, Llbi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0909ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v0, v1, v2}, Lmie;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmie;

    move-result-object v0

    .line 104
    iget-object v1, p0, Llbk;->a:Llbi;

    invoke-virtual {v1}, Llbi;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-select-kinship-tag"

    invoke-virtual {v0, v1, v2}, Lmie;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 105
    return-void
.end method
