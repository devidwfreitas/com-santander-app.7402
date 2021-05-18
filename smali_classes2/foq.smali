.class Lfoq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lfoo;


# direct methods
.method constructor <init>(Lfoo;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lfoq;->a:Lfoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lfoq;->a:Lfoo;

    iget-object v1, p0, Lfoq;->a:Lfoo;

    invoke-static {v1}, Lfoo;->b(Lfoo;)I

    move-result v1

    invoke-static {v0, v1}, Lfoo;->a(Lfoo;I)V

    .line 148
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
