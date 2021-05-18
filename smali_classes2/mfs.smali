.class Lmfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic b:Lmfq;


# direct methods
.method constructor <init>(Lmfq;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lmfs;->b:Lmfq;

    iput-object p2, p0, Lmfs;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lmfs;->b:Lmfq;

    iget-object v0, v0, Lmfq;->a:Landroid/widget/SeekBar;

    iget-object v1, p0, Lmfs;->b:Lmfq;

    invoke-static {v1}, Lmfq;->b(Lmfq;)Lmfx;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 139
    iget-object v0, p0, Lmfs;->b:Lmfq;

    iget-object v0, v0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lmfs;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 140
    iget-object v0, p0, Lmfs;->b:Lmfq;

    invoke-static {v0}, Lmfq;->c(Lmfq;)Lmfz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmfs;->b:Lmfq;

    invoke-static {v0}, Lmfq;->c(Lmfq;)Lmfz;

    move-result-object v0

    invoke-interface {v0}, Lmfz;->a()V

    .line 141
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lmfs;->b:Lmfq;

    iget-object v0, v0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lmfs;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    :goto_0
    iget-object v0, p0, Lmfs;->b:Lmfq;

    invoke-virtual {v0}, Lmfq;->d()V

    .line 150
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lmfs;->b:Lmfq;

    iget-object v0, v0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lmfs;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
