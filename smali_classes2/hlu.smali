.class Lhlu;
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
        "Lhxl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhlp;


# direct methods
.method constructor <init>(Lhlp;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lhlu;->a:Lhlp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhxl;Lhxl;)I
    .locals 2

    .prologue
    .line 94
    invoke-interface {p2}, Lhxl;->t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lhxl;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 91
    check-cast p1, Lhxl;

    check-cast p2, Lhxl;

    invoke-virtual {p0, p1, p2}, Lhlu;->a(Lhxl;Lhxl;)I

    move-result v0

    return v0
.end method
