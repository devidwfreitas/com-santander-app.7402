.class Lerl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lerk;


# direct methods
.method constructor <init>(Lerk;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lerl;->a:Lerk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 98
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 99
    return-void
.end method
