.class final Leoy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lekp;


# instance fields
.field final synthetic a:Lepn;

.field final synthetic b:Lekn;


# direct methods
.method constructor <init>(Lepn;Lekn;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Leoy;->a:Lepn;

    iput-object p2, p0, Leoy;->b:Lekn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lejm;Lepn;)Lekn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lejm;",
            "Lepn",
            "<TT;>;)",
            "Lekn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Leoy;->a:Lepn;

    invoke-virtual {p2, v0}, Lepn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leoy;->b:Lekn;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
