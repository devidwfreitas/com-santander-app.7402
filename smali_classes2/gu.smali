.class public Lgu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lgu;


# instance fields
.field private b:Lgx;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lgx;

    invoke-direct {v0}, Lgx;-><init>()V

    iput-object v0, p0, Lgu;->b:Lgx;

    .line 41
    return-void
.end method

.method public static a()Lgu;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lgu;->a:Lgu;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lgu;

    invoke-direct {v0}, Lgu;-><init>()V

    sput-object v0, Lgu;->a:Lgu;

    .line 51
    :cond_0
    sget-object v0, Lgu;->a:Lgu;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lgu;->b:Lgx;

    invoke-virtual {v0, p1, p2}, Lgx;->a(Landroid/app/Activity;Ljava/util/Map;)V

    .line 28
    return-void
.end method

.method public a(Landroid/app/Application;Ljava/util/Properties;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lgu;->b:Lgx;

    invoke-static {p1, p2}, Lgx;->a(Landroid/app/Application;Ljava/util/Properties;)V

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lgu;->b:Lgx;

    invoke-virtual {v0, p1, p2}, Lgx;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    return-void
.end method
