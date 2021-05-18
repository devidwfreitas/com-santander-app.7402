.class public abstract Lgmz;
.super Lana;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lana",
        "<",
        "Lgmx;",
        "Lgmw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lana;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Lanb;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lana;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Lanb;)V

    .line 18
    return-void
.end method

.method public bridge synthetic a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p2, Lanb;

    invoke-virtual {p0, p1, p2}, Lgmz;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Lanb;)V

    return-void
.end method
