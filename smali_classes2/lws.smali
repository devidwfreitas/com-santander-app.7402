.class Llws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lkvs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llwr;


# direct methods
.method constructor <init>(Llwr;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Llws;->a:Llwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkvs;Lkvs;)I
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p1}, Lkvs;->b()Ljava/util/Date;

    move-result-object v0

    .line 243
    invoke-virtual {p2}, Lkvs;->b()Ljava/util/Date;

    move-result-object v1

    .line 244
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 238
    check-cast p1, Lkvs;

    check-cast p2, Lkvs;

    invoke-virtual {p0, p1, p2}, Llws;->a(Lkvs;Lkvs;)I

    move-result v0

    return v0
.end method
