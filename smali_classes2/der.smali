.class public Lder;
.super Ldsa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldsa",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ldsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldsg",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ldsg;Ldsf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ldsg",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ldsf;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Ldsa;-><init>(ILjava/lang/String;Ldsf;)V

    iput-object p3, p0, Lder;->a:Ldsg;

    return-void
.end method


# virtual methods
.method protected a(Ldry;)Ldse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldry;",
            ")",
            "Ldse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Ldry;->b:[B

    iget-object v2, p1, Ldry;->c:Ljava/util/Map;

    invoke-static {v2}, Ldsy;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Ldsy;->a(Ldry;)Ldps;

    move-result-object v1

    invoke-static {v0, v1}, Ldse;->a(Ljava/lang/Object;Ldps;)Ldse;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Ldry;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lder;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lder;->a:Ldsg;

    invoke-interface {v0, p1}, Ldsg;->a(Ljava/lang/Object;)V

    return-void
.end method
