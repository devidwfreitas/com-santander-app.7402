.class public Lmbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lmbb;->a:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmbb;->a:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->a(Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;)Lmbc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lmbb;->a:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->a(Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;)Lmbc;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lmbc;->a(IZ)V

    .line 100
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method
