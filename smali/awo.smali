.class public Lawo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxg;


# instance fields
.field final synthetic a:Lawp;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lawp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lawo;->c:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lawo;->a:Lawp;

    iput-object p3, p0, Lawo;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lawr;)V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lawo;->a:Lawp;

    sget-object v1, Lawp;->Strong:Lawp;

    if-ne v0, v1, :cond_1

    .line 346
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView;->s()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lawo;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_0
    :goto_0
    iget-object v0, p0, Lawo;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lawr;)V

    .line 352
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lawo;->a:Lawp;

    sget-object v1, Lawp;->Weak:Lawp;

    if-ne v0, v1, :cond_0

    .line 348
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView;->t()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lawo;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
