.class public Lawn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxg;


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lawn;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lawr;)V
    .locals 2
    .param p1    # Lawr;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lawn;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lawr;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lawn;->a:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->a(Lcom/airbnb/lottie/LottieAnimationView;Lawj;)Lawj;

    .line 68
    return-void
.end method
