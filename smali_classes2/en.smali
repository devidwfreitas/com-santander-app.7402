.class final Len;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfa",
        "<",
        "Lek;",
        "Leo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Len;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)Leo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<",
            "Lek;",
            ">;)",
            "Leo;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v1, p0, Len;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lfd;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lek;

    invoke-static {v1, v0}, Lem;->a(Landroid/content/Context;Lek;)Leo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lfd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Len;->a(Lfd;)Leo;

    move-result-object v0

    return-object v0
.end method
