.class Lwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lwn;


# direct methods
.method constructor <init>(Lwn;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lwo;->a:Lwn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lwo;->a:Lwn;

    iget-object v1, v1, Lwn;->a:Lwh;

    invoke-static {v1}, Lwh;->a(Lwh;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lwo;->a:Lwn;

    iget-object v2, v2, Lwn;->a:Lwh;

    invoke-static {v2}, Lwh;->c(Lwh;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->e(Landroid/content/Context;Lacg;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lwo;->a:Lwn;

    iget-object v0, v0, Lwn;->a:Lwh;

    invoke-virtual {v0}, Lwh;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    return-void
.end method
