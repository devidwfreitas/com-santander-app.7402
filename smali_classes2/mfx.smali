.class Lmfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private b:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmfr;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lmfx;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lmfx;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 265
    return-void
.end method

.method public b(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lmfx;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 269
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lmfx;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lmfx;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 275
    :cond_0
    iget-object v0, p0, Lmfx;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lmfx;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 278
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lmfx;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmfx;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lmfx;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmfx;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 283
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lmfx;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmfx;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lmfx;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmfx;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 288
    :cond_1
    return-void
.end method
