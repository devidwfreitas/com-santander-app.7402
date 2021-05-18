.class public abstract Lcgj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcgj;->a:F

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcgj;->b:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcgj;->a:F

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcgj;->b:Ljava/lang/Object;

    .line 19
    iput p1, p0, Lcgj;->a:F

    .line 20
    return-void
.end method

.method public constructor <init>(FLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcgj;-><init>(F)V

    .line 24
    iput-object p2, p0, Lcgj;->b:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcgj;->a:F

    .line 43
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcgj;->b:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcgj;->a:F

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcgj;->b:Ljava/lang/Object;

    return-object v0
.end method
