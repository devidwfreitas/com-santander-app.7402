.class Lga;
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
        "Lorg/json/JSONArray;",
        "Lek;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lfz;


# direct methods
.method constructor <init>(Lfz;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lga;->b:Lfz;

    iput-object p2, p0, Lga;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)Lek;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<",
            "Lorg/json/JSONArray;",
            ">;)",
            "Lek;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lfz;->a(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lga;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lfz;->a(Ljava/util/Map;Landroid/net/Uri;)Lek;

    move-result-object v0

    .line 183
    return-object v0
.end method

.method public synthetic b(Lfd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lga;->a(Lfd;)Lek;

    move-result-object v0

    return-object v0
.end method
