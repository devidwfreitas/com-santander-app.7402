.class public Lcma;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcmb;

    invoke-direct {v0, p1}, Lcmb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcma;->a:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public a()Lcmx;
    .locals 1

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcma;->a:Landroid/content/Context;

    invoke-static {v0}, Lcmw;->a(Landroid/content/Context;)Lcmx;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcmy; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcmz; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    goto :goto_1

    .line 57
    :catch_2
    move-exception v0

    goto :goto_1

    .line 53
    :catch_3
    move-exception v0

    goto :goto_1
.end method
