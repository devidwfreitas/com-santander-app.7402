.class public Lnhu;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lniy;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-class v0, Lniy;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnhu;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p2, p0, Lnhu;->b:Ljava/lang/Throwable;

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/EventListener;)V
    .locals 0

    check-cast p1, Lniy;

    invoke-virtual {p0, p1}, Lnhu;->a(Lniy;)V

    return-void
.end method

.method public a(Lniy;)V
    .locals 2

    iget-object v0, p0, Lnhu;->a:Ljava/lang/String;

    iget-object v1, p0, Lnhu;->b:Ljava/lang/Throwable;

    invoke-interface {p1, v0, v1}, Lniy;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
