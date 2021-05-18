.class public Lkpo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkpp;
    .annotation runtime Leks;
        a = "scheduling"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "operatorName"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "observations"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "schedulingStatus"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "providerStatus"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lkpo;->a:Lkpp;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lkpo;->a:Lkpp;

    invoke-virtual {v0}, Lkpp;->a()Ljava/util/Date;

    move-result-object v0

    const-string v1, "dd/MM"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lkpo;->c:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lkpo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lkpo;->c:Ljava/lang/String;

    return-object v0
.end method
