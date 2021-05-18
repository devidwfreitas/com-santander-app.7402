.class Lwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laas;


# instance fields
.field final synthetic a:Lwk;


# direct methods
.method constructor <init>(Lwk;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lwl;->a:Lwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lwl;->a:Lwk;

    iget-object v0, v0, Lwk;->a:Lwh;

    invoke-virtual {v0}, Lwh;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 156
    return-void
.end method
