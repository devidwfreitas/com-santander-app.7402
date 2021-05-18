.class public Lgmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamx;


# instance fields
.field private a:Lghu;


# direct methods
.method public constructor <init>(Lghu;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lgmw;->a:Lghu;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lgmw;->a:Lghu;

    invoke-virtual {v0}, Lghu;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgmw;->a:Lghu;

    invoke-virtual {v0}, Lghu;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgmw;->a:Lghu;

    invoke-virtual {v0}, Lghu;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lghu;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lgmw;->a:Lghu;

    return-object v0
.end method
