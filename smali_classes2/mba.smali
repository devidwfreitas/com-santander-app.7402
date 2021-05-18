.class public Lmba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lmba;->a:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmba;->a:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->a(Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;)Lmbc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lmba;->a:Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;->a(Lcom/santander/app/seguros/ui/widgets/AudioPlayerView;)Lmbc;

    move-result-object v0

    invoke-interface {v0}, Lmbc;->b()V

    .line 82
    :cond_0
    return-void
.end method
