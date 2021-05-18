.class Llit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llis;


# direct methods
.method constructor <init>(Llis;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Llit;->a:Llis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Llit;->a:Llis;

    invoke-static {v0}, Llis;->a(Llis;)Lliw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Llit;->a:Llis;

    invoke-static {v0}, Llis;->b(Llis;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Llit;->a:Llis;

    invoke-static {v0}, Llis;->a(Llis;)Lliw;

    move-result-object v0

    invoke-interface {v0}, Lliw;->a()V

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Llit;->a:Llis;

    invoke-virtual {v0}, Llis;->dismiss()V

    .line 102
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Llit;->a:Llis;

    invoke-static {v0}, Llis;->a(Llis;)Lliw;

    move-result-object v0

    invoke-interface {v0}, Lliw;->b()V

    goto :goto_0
.end method
