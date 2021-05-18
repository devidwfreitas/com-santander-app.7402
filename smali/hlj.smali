.class public Lhlj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "value"
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation runtime Leks;
        a = "quantity"
    .end annotation
.end field

.field private c:Lhlk;
    .annotation runtime Leks;
        a = "quantityObject"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lhlj;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lhlj;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lhlj;->c:Lhlk;

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    .line 28
    iget-object v1, p0, Lhlj;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 29
    const-class v2, Lhlk;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlk;

    iput-object v0, p0, Lhlj;->c:Lhlk;

    .line 31
    :cond_1
    iget-object v0, p0, Lhlj;->c:Lhlk;

    goto :goto_0
.end method
