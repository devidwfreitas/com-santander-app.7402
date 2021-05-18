.class Llzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Llyy;


# direct methods
.method constructor <init>(Llyy;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Llzb;->a:Llyy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Llzb;->a:Llyy;

    invoke-static {v0}, Llyy;->e(Llyy;)Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->b()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Llzb;->a:Llyy;

    invoke-static {v0}, Llyy;->e(Llyy;)Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    move-result-object v0

    const v1, 0x7f020448

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->setImageButtonPlay(I)V

    .line 325
    iget-object v0, p0, Llzb;->a:Llyy;

    invoke-static {v0}, Llyy;->f(Llyy;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 326
    return-void
.end method
