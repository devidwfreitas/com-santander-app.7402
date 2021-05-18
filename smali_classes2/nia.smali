.class public final Lnia;
.super Lnib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnib",
        "<",
        "Lnjf;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lnjf;

    invoke-direct {p0, v0}, Lnib;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnia;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/EventListener;)V
    .locals 0

    check-cast p1, Lnjf;

    invoke-virtual {p0, p1}, Lnia;->a(Lnjf;)V

    return-void
.end method

.method public a(Lnjf;)V
    .locals 1

    iget-object v0, p0, Lnia;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lnjf;->a(Ljava/lang/String;)V

    return-void
.end method
