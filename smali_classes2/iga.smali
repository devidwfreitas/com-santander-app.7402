.class Liga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lifz;


# direct methods
.method constructor <init>(Lifz;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Liga;->a:Lifz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Liga;->a:Lifz;

    invoke-static {v0}, Lifz;->a(Lifz;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 38
    return-void
.end method
