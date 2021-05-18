.class Lldv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llds;


# direct methods
.method constructor <init>(Llds;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lldv;->a:Llds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lldv;->a:Llds;

    invoke-static {v0}, Llds;->b(Llds;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 103
    iget-object v0, p0, Lldv;->a:Llds;

    invoke-static {v0}, Llds;->a(Llds;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lldv;->a:Llds;

    invoke-static {v0}, Llds;->c(Llds;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lmhj;->e(Landroid/view/View;)V

    .line 106
    return-void
.end method
