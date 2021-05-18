.class Lelq;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lejm;

.field final synthetic d:Lepn;

.field final synthetic e:Lelp;

.field private f:Lekn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lekn",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lelp;ZZLejm;Lepn;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lelq;->e:Lelp;

    iput-boolean p2, p0, Lelq;->a:Z

    iput-boolean p3, p0, Lelq;->b:Z

    iput-object p4, p0, Lelq;->c:Lejm;

    iput-object p5, p0, Lelq;->d:Lepn;

    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method

.method private b()Lekn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lekn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lelq;->f:Lekn;

    .line 142
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lelq;->c:Lejm;

    iget-object v1, p0, Lelq;->e:Lelp;

    iget-object v2, p0, Lelq;->d:Lepn;

    .line 144
    invoke-virtual {v0, v1, v2}, Lejm;->a(Lekp;Lepn;)Lekn;

    move-result-object v0

    iput-object v0, p0, Lelq;->f:Lekn;

    goto :goto_0
.end method


# virtual methods
.method public a(Leps;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leps;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-boolean v0, p0, Lelq;->b:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Leps;->f()Leps;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lelq;->b()Lekn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lekn;->a(Leps;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lepo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lepo;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lelq;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lepo;->n()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lelq;->b()Lekn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
