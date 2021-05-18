.class Lisl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lise;


# direct methods
.method constructor <init>(Lise;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lisl;->a:Lise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lisl;->a:Lise;

    invoke-static {v0}, Lise;->j(Lise;)Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lisl;->a:Lise;

    invoke-static {v1}, Lise;->c(Lise;)Litf;

    move-result-object v1

    invoke-interface {v1}, Litf;->s()V

    .line 519
    iget-object v1, p0, Lisl;->a:Lise;

    invoke-static {v1}, Lise;->c(Lise;)Litf;

    move-result-object v1

    invoke-interface {v1, v0}, Litf;->d(Ljava/lang/String;)V

    .line 520
    return-void
.end method
