.class Llzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Llyy;


# direct methods
.method constructor <init>(Llyy;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Llzd;->b:Llyy;

    iput-object p2, p0, Llzd;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Llzd;->b:Llyy;

    invoke-static {v0}, Llyy;->g(Llyy;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Llzd;->b:Llyy;

    invoke-static {v0}, Llyy;->g(Llyy;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 466
    iget-object v1, p0, Llzd;->b:Llyy;

    invoke-static {v1}, Llyy;->e(Llyy;)Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->a()Landroid/support/v7/widget/AppCompatSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatSeekBar;->setProgress(I)V

    .line 468
    :cond_0
    iget-object v0, p0, Llzd;->a:Landroid/os/Handler;

    iget-object v1, p0, Llzd;->b:Llyy;

    invoke-static {v1}, Llyy;->h(Llyy;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    return-void
.end method
