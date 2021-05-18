.class Ljbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljbd;


# direct methods
.method constructor <init>(Ljbd;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Ljbe;->a:Ljbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ljbe;->a:Ljbd;

    invoke-static {v0}, Ljbd;->a(Ljbd;)Ljaa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Ljbe;->a:Ljbd;

    invoke-static {v0}, Ljbd;->a(Ljbd;)Ljaa;

    move-result-object v0

    invoke-interface {v0}, Ljaa;->b()V

    .line 37
    :cond_0
    return-void
.end method
