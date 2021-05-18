.class Labc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Labb;


# direct methods
.method constructor <init>(Labb;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Labc;->a:Labb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Labc;->a:Labb;

    invoke-static {v0}, Labb;->b(Labb;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Labc;->a:Labb;

    invoke-static {v1}, Labb;->a(Labb;)Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 106
    iget-object v0, p0, Labc;->a:Labb;

    invoke-static {v0}, Labb;->c(Labb;)Labn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Labc;->a:Labb;

    invoke-static {v0}, Labb;->c(Labb;)Labn;

    move-result-object v0

    invoke-interface {v0}, Labn;->onDismiss()V

    .line 109
    :cond_0
    return-void
.end method
