.class public Lejb;
.super Ljava/lang/Object;

# interfaces
.implements Lded;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->h()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    new-instance v0, Lehz;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lehz;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Leht;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Leht;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
