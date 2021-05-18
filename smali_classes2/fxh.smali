.class Lfxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxg;


# instance fields
.field final synthetic a:Lfxg;


# direct methods
.method constructor <init>(Lfxg;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lfxh;->a:Lfxg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lawr;)V
    .locals 1
    .param p1    # Lawr;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lfxh;->a:Lfxg;

    iget-object v0, v0, Lfxg;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lawr;)V

    .line 74
    iget-object v0, p0, Lfxh;->a:Lfxg;

    invoke-static {v0}, Lfxg;->a(Lfxg;)V

    .line 75
    iget-object v0, p0, Lfxh;->a:Lfxg;

    invoke-static {v0}, Lfxg;->b(Lfxg;)V

    .line 77
    :cond_0
    return-void
.end method
