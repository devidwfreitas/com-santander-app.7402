.class Lfex;
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
        "Lfdu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfdu;

.field final synthetic b:Lfew;


# direct methods
.method constructor <init>(Lfew;Lfdu;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lfex;->b:Lfew;

    iput-object p2, p0, Lfex;->a:Lfdu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfdu;Lfdu;)I
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lfex;->b:Lfew;

    iget-object v1, p0, Lfex;->a:Lfdu;

    invoke-virtual {v0, p1, v1}, Lfew;->a(Lfdu;Lfdu;)F

    move-result v0

    .line 62
    iget-object v1, p0, Lfex;->b:Lfew;

    iget-object v2, p0, Lfex;->a:Lfdu;

    invoke-virtual {v1, p2, v2}, Lfew;->a(Lfdu;Lfdu;)F

    move-result v1

    .line 64
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lfdu;

    check-cast p2, Lfdu;

    invoke-virtual {p0, p1, p2}, Lfex;->a(Lfdu;Lfdu;)I

    move-result v0

    return v0
.end method
