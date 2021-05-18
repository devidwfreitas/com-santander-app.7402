.class Llzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Llyy;


# direct methods
.method constructor <init>(Llyy;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Llzc;->a:Llyy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Llzc;->a:Llyy;

    invoke-static {v0}, Llyy;->e(Llyy;)Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Llzc;->a:Llyy;

    invoke-static {v0}, Llyy;->e(Llyy;)Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->clearAnimation()V

    .line 356
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Llzc;->a:Llyy;

    invoke-static {v0}, Llyy;->g(Llyy;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Llzc;->a:Llyy;

    invoke-static {v0}, Llyy;->g(Llyy;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 343
    iget-object v0, p0, Llzc;->a:Llyy;

    invoke-static {v0}, Llyy;->f(Llyy;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 344
    iget-object v0, p0, Llzc;->a:Llyy;

    invoke-static {v0}, Llyy;->i(Llyy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llzc;->a:Llyy;

    invoke-static {v1}, Llyy;->h(Llyy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 345
    iget-object v0, p0, Llzc;->a:Llyy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llyy;->a(Llyy;I)I

    .line 347
    :cond_0
    const-string v0, "Seguros_Sinistro_Acionar_ContarSobreAcontecido_Acao"

    const-string v1, "ExcluirGravacao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Llzc;->a:Llyy;

    iget-object v1, p0, Llzc;->a:Llyy;

    invoke-static {v1}, Llyy;->j(Llyy;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llyy;->a(Llyy;Ljava/lang/String;)V

    .line 350
    return-void
.end method
