.class final Lenw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lekp;


# instance fields
.field private final a:Lepn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lepn",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lekh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lekh",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Lejy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lejy",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lepn;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lepn",
            "<*>;Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    instance-of v0, p1, Lekh;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lekh;

    :goto_0
    iput-object v0, p0, Lenw;->d:Lekh;

    .line 131
    instance-of v0, p1, Lejy;

    if-eqz v0, :cond_2

    check-cast p1, Lejy;

    :goto_1
    iput-object p1, p0, Lenw;->e:Lejy;

    .line 134
    iget-object v0, p0, Lenw;->d:Lekh;

    if-nez v0, :cond_0

    iget-object v0, p0, Lenw;->e:Lejy;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lekv;->a(Z)V

    .line 135
    iput-object p2, p0, Lenw;->a:Lepn;

    .line 136
    iput-boolean p3, p0, Lenw;->b:Z

    .line 137
    iput-object p4, p0, Lenw;->c:Ljava/lang/Class;

    .line 138
    return-void

    :cond_1
    move-object v0, v1

    .line 128
    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 131
    goto :goto_1

    .line 134
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a(Lejm;Lepn;)Lekn;
    .locals 6
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
    .line 143
    iget-object v0, p0, Lenw;->a:Lepn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lenw;->a:Lepn;

    .line 144
    invoke-virtual {v0, p2}, Lepn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lenw;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lenw;->a:Lepn;

    invoke-virtual {v0}, Lepn;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 146
    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lent;

    iget-object v1, p0, Lenw;->d:Lekh;

    iget-object v2, p0, Lenw;->e:Lejy;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lent;-><init>(Lekh;Lejy;Lejm;Lepn;Lekp;)V

    :goto_1
    return-object v0

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lenw;->c:Ljava/lang/Class;

    .line 145
    invoke-virtual {p2}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    .line 146
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
