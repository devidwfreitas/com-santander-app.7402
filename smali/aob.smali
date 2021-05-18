.class Laob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Laob;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Laob;->a:Laoa;

    invoke-static {v0}, Laoa;->a(Laoa;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Laob;->a:Laoa;

    invoke-static {v1}, Laoa;->b(Laoa;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-static {v0, v1}, Laoo;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 182
    iget-object v0, p0, Laob;->a:Laoa;

    invoke-static {v0}, Laoa;->d(Laoa;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Laob;->a:Laoa;

    invoke-static {v1}, Laoa;->c(Laoa;)Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 184
    iget-object v0, p0, Laob;->a:Laoa;

    invoke-static {v0}, Laoa;->e(Laoa;)Laom;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Laob;->a:Laoa;

    invoke-static {v0}, Laoa;->e(Laoa;)Laom;

    move-result-object v0

    invoke-interface {v0}, Laom;->onDismiss()V

    .line 187
    :cond_0
    return-void
.end method
