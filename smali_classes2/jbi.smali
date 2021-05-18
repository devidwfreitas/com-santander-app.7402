.class Ljbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Ljbh;


# direct methods
.method constructor <init>(Ljbh;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Ljbi;->a:Ljbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ljbi;->a:Ljbh;

    invoke-static {v0}, Ljbh;->a(Ljbh;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
