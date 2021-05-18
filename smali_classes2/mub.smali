.class Lmub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lmtx;


# direct methods
.method constructor <init>(Lmtx;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lmub;->a:Lmtx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 106
    iget-object v0, p0, Lmub;->a:Lmtx;

    invoke-static {v0, p1}, Lmtx;->a(Lmtx;Landroid/view/View;)V

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
