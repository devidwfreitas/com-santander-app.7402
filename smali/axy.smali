.class public Laxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lawu;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxy;->a:Ljava/util/Map;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxy;->d:Z

    .line 27
    iput-object v1, p0, Laxy;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 28
    iput-object v1, p0, Laxy;->c:Lawu;

    .line 29
    return-void
.end method

.method public constructor <init>(Lawu;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxy;->a:Ljava/util/Map;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxy;->d:Z

    .line 38
    iput-object p1, p0, Laxy;->c:Lawu;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Laxy;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxy;->a:Ljava/util/Map;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxy;->d:Z

    .line 33
    iput-object p1, p0, Laxy;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Laxy;->c:Lawu;

    .line 35
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Laxy;->b:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Laxy;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->invalidate()V

    .line 97
    :cond_0
    iget-object v0, p0, Laxy;->c:Lawu;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Laxy;->c:Lawu;

    invoke-virtual {v0}, Lawu;->invalidateSelf()V

    .line 100
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    return-object p1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Laxy;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    invoke-direct {p0}, Laxy;->b()V

    .line 80
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Laxy;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-direct {p0}, Laxy;->b()V

    .line 56
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Laxy;->d:Z

    .line 64
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Laxy;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-direct {p0}, Laxy;->b()V

    .line 72
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Laxy;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Laxy;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Laxy;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    invoke-virtual {p0, p1}, Laxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-boolean v1, p0, Laxy;->d:Z

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Laxy;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
