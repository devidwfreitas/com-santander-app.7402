.class Lgju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lgjs;


# direct methods
.method constructor <init>(Lgjs;Lgkw;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lgju;->b:Lgjs;

    iput-object p2, p0, Lgju;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lgju;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 48
    return-void
.end method
