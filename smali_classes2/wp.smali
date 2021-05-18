.class Lwp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laas;


# instance fields
.field final synthetic a:Lwn;


# direct methods
.method constructor <init>(Lwn;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lwp;->a:Lwn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lwp;->a:Lwn;

    iget-object v0, v0, Lwn;->a:Lwh;

    invoke-virtual {v0}, Lwh;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 289
    return-void
.end method
