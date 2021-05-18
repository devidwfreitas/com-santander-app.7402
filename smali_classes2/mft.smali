.class Lmft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lmfq;


# direct methods
.method constructor <init>(Lmfq;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lmft;->a:Lmfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 162
    iget-object v0, p0, Lmft;->a:Lmfq;

    invoke-virtual {v0, p2}, Lmfq;->a(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v6

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 163
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lmft;->a:Lmfq;

    iget-object v1, v1, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
