.class Lqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lqj;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 385
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 386
    :cond_1
    iget-object v0, p0, Lqj;->a:Lpc;

    iget-object v1, p0, Lqj;->a:Lpc;

    invoke-static {v1}, Lpc;->G(Lpc;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lpc;->a(Lpc;Landroid/view/View;)V

    .line 388
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
