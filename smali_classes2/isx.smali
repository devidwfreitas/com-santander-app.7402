.class Lisx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lism;


# direct methods
.method constructor <init>(Lism;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lisx;->a:Lism;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lisx;->a:Lism;

    invoke-static {v0}, Lism;->a(Lism;)Litf;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Litf;->a(Landroid/view/View;ILandroid/view/KeyEvent;)V

    .line 225
    const/4 v0, 0x0

    return v0
.end method
