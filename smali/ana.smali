.class public abstract Lana;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Conta::",
        "Land;",
        "Cartao::",
        "Lamx;",
        ">",
        "Ljava/lang/Object;",
        "Lamt",
        "<",
        "Lanb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lamx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCartao;)V"
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public a(Land;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConta;)V"
        }
    .end annotation

    .prologue
    .line 77
    return-void
.end method

.method public a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Lanb;)V
    .locals 1

    .prologue
    .line 69
    instance-of v0, p2, Land;

    if-eqz v0, :cond_1

    .line 70
    check-cast p2, Land;

    invoke-virtual {p0, p2}, Lana;->a(Land;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    instance-of v0, p2, Lamx;

    if-eqz v0, :cond_0

    .line 72
    check-cast p2, Lamx;

    invoke-virtual {p0, p2}, Lana;->a(Lamx;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p2, Lanb;

    invoke-virtual {p0, p1, p2}, Lana;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Lanb;)V

    return-void
.end method
