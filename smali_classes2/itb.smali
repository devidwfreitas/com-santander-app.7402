.class Litb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lism;


# direct methods
.method constructor <init>(Lism;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Litb;->a:Lism;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Litb;->a:Lism;

    invoke-static {v0}, Lism;->d(Lism;)V

    .line 409
    iget-object v0, p0, Litb;->a:Lism;

    invoke-static {v0}, Lism;->a(Lism;)Litf;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Litf;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 410
    const/4 v0, 0x0

    return v0
.end method
